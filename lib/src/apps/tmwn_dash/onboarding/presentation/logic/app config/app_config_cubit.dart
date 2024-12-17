import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/data/datasource/remote.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_cubit.freezed.dart';
part 'app_config_state.dart';

class AppConfigCubit extends Cubit<AppConfigState> {
  AppConfigDataSource dataSource = AppConfigDataSource();
  AppConfigCubit() : super(const AppConfigState.initial());

  Future<void> init() async {
    Future.delayed(const Duration(milliseconds: 100), () {
      getTranslationEvent();
    });
  }

  getTranslationEvent([LanguageEnum? language]) async {
    emit(state.copyWith(translationStatus: DataStatus.loading));
    final lang = language ?? LocalDatabase.getLocalization();

    final translationCache = LocalDatabase.getDataStoreLocal();

    if (translationCache != null) {
      setCurrentTranslation(translationCache);
    }

    final response = await dataSource.getDataStoreSource(language: state.lang);
    if (response is DataFailed) {
      emit(state.copyWith(
          translationStatus:
              isSetCache ? state.translationStatus : DataStatus.error));
      return;
    }

    LocalDatabase.saveDataStoreToLocal(lang, response.data!);
    setCurrentTranslation(response.data!);
  }

  setCurrentTranslation(Map<dynamic, dynamic> translation) {
    switch (state.lang) {
      case LanguageEnum.AR:
        emit(state.copyWith(arabicTranslate: translation));
        break;
      case LanguageEnum.KR_SORANI:
        emit(state.copyWith(soraniString: translation));
        break;
      case LanguageEnum.KR_BADANI:
        emit(state.copyWith(badiniString: translation));
        break;
      default:
    }
    emit(state.copyWith(
      translationStatus: DataStatus.loaded,
    ));
  }

  Map<dynamic, dynamic>? getCurrentTranslation() {
    return (state.lang == LanguageEnum.AR
        ? (state.arabicTranslate)
        : state.lang == LanguageEnum.KR_SORANI
            ? state.soraniString
            : state.badiniString);
  }

  bool get isSetCache => switch (state.lang) {
        LanguageEnum.AR => state.arabicTranslate != null,
        LanguageEnum.KR_SORANI => state.soraniString != null,
        LanguageEnum.KR_BADANI => state.badiniString != null
      };
}
