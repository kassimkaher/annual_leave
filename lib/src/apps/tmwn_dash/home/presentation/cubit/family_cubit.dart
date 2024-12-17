import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/data/datasource/remote.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/data/familes_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'family_cubit.freezed.dart';
part 'family_state.dart';

@singleton
class FamilyCubit extends Cubit<FamilyState> {
  final FamilyDataSource _familyDataSource = FamilyDataSource();
  FamilyCubit() : super(const FamilyState.initial());

  getFamily({String? number, String? oldNumber}) async {
    emit(state.copyWith(dataStatus: DataStatus.loading, page: 1, perPage: 20));
    final response = await _familyDataSource.getStatictsDataSource(
      page: state.page,
      perPage: state.perPage,
      number: number ?? "",
      oldNumber: oldNumber ?? "",
    );
    if (response is DataFailed) {
      emit(state.copyWith(
          dataStatus: DataStatus.error, error: response as DataFailed));
      return;
    }
    //LocalDatabase.saveProfile(response.data!);

    emit(state.copyWith(
        familyModel: response.data, dataStatus: DataStatus.loaded));
  }
}
