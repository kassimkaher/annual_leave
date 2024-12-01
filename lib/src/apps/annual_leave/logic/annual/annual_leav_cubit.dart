import 'dart:developer';

import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/leaves_data_entity.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gsheets/gsheets.dart';

part 'annual_leav_cubit.freezed.dart';
part 'annual_leav_state.dart';

class AnnualLeavCubit extends Cubit<AnnualLeavState> {
  AnnualLeavCubit() : super(const AnnualLeavState.initial());

  init() async {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
    try {
      // GoogleSheetsService()
      //     .fetchSheetData(LocalDatabase.getUser()!.token!, googleSheetId)
      //     .then((value) {
      //   emit(state.copyWith(
      //     remoteDataStatus: RemoteDataStatus.loaded,
      //   ));
      //   return;
      //   getCell();
      // });
      final gsheets = GSheets(
        await rootBundle
            .loadString("assets/certificates/annula-leav-d27ab5e366b5.json"),
      );

      const spreadsheetId = googleSheetId;

      final spreadsheet = await gsheets.spreadsheet(spreadsheetId);

      // List all worksheets in the spreadsheet
      final sheets = spreadsheet.sheets;

      emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded,
          worksheet: sheets.first,
          tableOfLeaves: spreadsheet));
      getCell();
    } catch (e) {
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
    }

    // Print worksheet titles and their IDs
  }

  getCell() async {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
    List<AnnualLeavEntity> leaves = [];
    final myEmail = LocalDatabase.getUser()?.email;
    state.worksheet!.values.allRows().then((value) {
      for (var i = 0; i < value.length; i++) {
        if (value[i][0] != myEmail && appType == AppType.USER) {
          continue;
        }
        try {
          leaves.insert(
              0,
              AnnualLeavEntity(
                row: i + 1,
                email: value[i][0],
                name: value[i][1],
                start: value[i][2],
                end: value[i][3],
                startDate: convertSerialToDate(value[i][2]),
                endDate: convertSerialToDate(value[i][3]),
                type: LeaveType.values.byName(value[i][4]),
                leaveDesition: value[i].asMap().containsKey(5)
                    ? LeaveDesition.values.byName(value[i][5])
                    : LeaveDesition.PENDING,
                comment: value[i].asMap().containsKey(6) ? value[i][6] : "",
              ));
        } catch (e) {
          log(e.toString());
        }
      }
      emit(state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded, leaves: leaves));
    });
  }

  DateTime convertSerialToDate(String serialNumber) {
    // Base date is December 30, 1899
    final baseDate = DateTime(1899, 12, 30);
    // Add the serial number as days to the base date
    return baseDate.add(Duration(days: int.parse(serialNumber)));
  }

  void addLeave(AnnualLeavEntity data) {
    emit(state.copyWith(
        remoteDataStatus: RemoteDataStatus.loaded,
        leaves: [data, ...state.leaves]));
  }

  void deleteLeave(AnnualLeavEntity annualLeavEntity) {
    if (annualLeavEntity.leaveDesition != LeaveDesition.PENDING) {
      return;
    }
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loading));
    try {
      final row = getRowNumber(annualLeavEntity);
      state.worksheet!.deleteRow((row)).then((onValue) {
        if (onValue) {
          List<AnnualLeavEntity> leaves = [];
          leaves.addAll(state.leaves.reversed.toList());
          leaves.removeAt(row - 1);
          emit(state.copyWith(
              remoteDataStatus: RemoteDataStatus.loaded,
              leaves: leaves.reversed.toList()));
        } else {
          emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
        }
      });
    } catch (e) {
      emit(state.copyWith(remoteDataStatus: RemoteDataStatus.error));
    }
  }

  int getRowNumber(AnnualLeavEntity annualLeavEntity) =>
      state.leaves.reversed.toList().indexOf(annualLeavEntity) + 1;

  void updateData(AnnualLeavEntity data, int index) {
    emit(state.copyWith(remoteDataStatus: RemoteDataStatus.loaded, leaves: [
      ...state.leaves.sublist(0, index),
      data,
      ...state.leaves.sublist(index + 1)
    ]));
  }
}
