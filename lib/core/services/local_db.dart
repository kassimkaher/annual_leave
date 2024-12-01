import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/src/apps/annual_leave/entityes/user_entity.dart';
import 'package:annual_leave/src/apps/auth/data/model/user_model.dart';
import 'package:annual_leave/src/apps/financial_accounts/data/transaction%20model/transaction_model.dart';
import 'package:hive/hive.dart';

class LocalDatabase {
  static Future<void> iniLocalDataBase() async {
    await Hive.openBox(storageKey);
  }

  static clearData() {
    Hive.box(storageKey).delete("localization_expenses_key");
    return Hive.box(storageKey).clear();
  }

  static LanguageEnum getLocalization() {
    final data = Hive.box(storageKey).get("localization_storage_key");
    final lang = LanguageEnum.values.byName((data as String?) ?? "arabic");

    return lang;
  }

  static void saveLanguage(LanguageEnum data) {
    Hive.box(storageKey).put("localization_storage_key", data.name);
  }

  static saveLatLong(Map<dynamic, dynamic> latlong) {
    Hive.box(storageKey).put("latlong", latlong);
  }

  static Map<dynamic, dynamic>? getLatLong() {
    final latlong = Hive.box(storageKey).get("latlong");
    return latlong;
  }

  static login(UserEntity user) {
    Hive.box(storageKey).put("user_data", user.toJson());
  }

  static logOut() {
    Hive.box(storageKey).delete("user_data");
  }

  static UserEntity? getUser() {
    final user = Hive.box(storageKey).get("user_data");
    if (user == null) {
      return null;
    }

    Map<String, dynamic> stringKeyMap =
        (user as Map<dynamic, dynamic>).map((key, value) {
      return MapEntry(key.toString(), value);
    });
    return UserEntity.fromJson(stringKeyMap);
  }

  static void saveTransaction(List<TransactionModel> transactionData) {
    Hive.box(storageKey).put(
      "localization_transactions_key",
      transactionData,
    );
    return;
  }

  static void updateExpense(TransactionModel transactionData, int index) {
    final transaction = getTransactionCache();
    transaction![index] = transactionData;

    Hive.box(storageKey).put("localization_expenses_key", transaction);
  }

  static List<TransactionModel>? getTransactionCache() {
    final data = ((Hive.box(storageKey).get("localization_transactions_key")
                as List<dynamic>?) ??
            [])
        .map((e) => e as TransactionModel)
        .toList();
    return data;
  }

  static void saveToken(String s) {
    Hive.box(storageKey).put("AccessToken", s);
  }

  static String? getToken() {
    return Hive.box(storageKey).get("AccessToken");
  }

  static void saveProfile(UserModel userModel) {
    Hive.box(storageKey).put("Profile_storage_key", userModel.toJson());
  }

  static UserModel? getProfileStorage() {
    final data = ((Hive.box(storageKey).get("Profile_storage_key")
        as Map<dynamic, dynamic>?));
    if (data == null) {
      return null;
    }
    final userModel = UserModel.fromJson(data.map((key, value) {
      return MapEntry(key.toString(), value);
    }));
    return userModel;
  }
}
