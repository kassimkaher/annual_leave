import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/leaves_data_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsheets/gsheets.dart';

part 'crud_annual_leaves_cubit.freezed.dart';
part 'crud_annual_leaves_state.dart';

class CrudAnnualLeavesCubit extends Cubit<CrudAnnualLeavesState> {
  late Worksheet worksheet;
  TextEditingController dateBeginController = TextEditingController();
  TextEditingController dateEndController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  LeaveType? selectedLeaveType;
  LeaveDesition? selectedLeaveDesition;
  AnnualLeavEntity? annualLeavEntity;
  final formKey = GlobalKey<FormState>();
  CrudAnnualLeavesCubit({required this.worksheet})
      : super(const CrudAnnualLeavesState.initial());

  addLeave() {
    if (formKey.currentState!.validate()) {
      final user = LocalDatabase.getUser();
      annualLeavEntity = AnnualLeavEntity(
        name: user!.name!,
        email: user.email!,
        type: selectedLeaveType!,
        start: dateBeginController.text,
        startDate: DateTime.parse(dateBeginController.text),
        end: dateEndController.text,
        endDate: DateTime.parse(dateEndController.text),
        leaveDesition: LeaveDesition.PENDING,
        comment: "",
      );

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
      final row = [
        annualLeavEntity!.email,
        annualLeavEntity!.name,
        annualLeavEntity!.start.toString(),
        annualLeavEntity!.end.toString(),
        annualLeavEntity!.type.name,
      ];
      worksheet.values.appendRow(row).then((value) {
        emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded,
        ));
        return;
      }).catchError((e) {
        emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
        return;
      });
      return;
    }

    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
  }

  void fillForm(AnnualLeavEntity data) {
    dateBeginController.text = data.startDate.toString().split(" ")[0];
    dateEndController.text = data.endDate.toString().split(" ")[0];
    selectedLeaveType = data.type;
    annualLeavEntity = data;
    selectedLeaveDesition = data.leaveDesition;
    commentController.text = data.comment;
  }

  void save(LeaveDesition leaveDesition, int rowIndex) {
    if (formKey.currentState!.validate()) {
      annualLeavEntity = annualLeavEntity!.copyWith(
        leaveDesition: leaveDesition,
        comment: commentController.text,
      );

      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
      final row = [
        annualLeavEntity!.email,
        annualLeavEntity!.name,
        annualLeavEntity!.start.toString(),
        annualLeavEntity!.end.toString(),
        annualLeavEntity!.type.name,
        annualLeavEntity!.leaveDesition.name,
        annualLeavEntity?.comment ?? ""
      ];
      worksheet.values.insertRow(rowIndex, row).then((value) {
        emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded,
        ));
        return;
      }).catchError((e) {
        emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
        return;
      });
      return;
    }

    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
  }
}
