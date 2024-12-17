part of 'app_config_cubit.dart';

enum AppConfigSteps {
  splashScreen,
  checkConnectionInternet,
  checkLocation,
  loadingTranslation,
  loadingSettings,
  loadingFamilyData,
  configFinished,
}

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState.initial({
    @Default(DataStatus.ideal) DataStatus translationStatus,
    @Default(LanguageEnum.AR) LanguageEnum lang,
    Map<dynamic, dynamic>? badiniString,
    Map<dynamic, dynamic>? soraniString,
    Map<dynamic, dynamic>? arabicTranslate,
    Map<dynamic, dynamic>? dataStore,
  }) = _Initial;
}
