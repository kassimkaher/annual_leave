import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/data/familes_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class FamilyDataSource {
  Future<DataState<FamilesModel>> getStatictsDataSource(
      {required int page,
      int perPage = 20,
      String number = "",
      String oldNumber = "",
      String phone = ""}) async {
    String url = "$familyListUrl?page=$page&perPage=$perPage";
    if (number.isNotEmpty) {
      url += "&number=$number";
    }
    if (oldNumber.isNotEmpty) {
      url += "&oldNumber=$oldNumber";
    }
    if (phone.isNotEmpty) {
      url += "&phone=$phone";
    }
    final response = await (getIt<DioClient>().instance('').get(
          url,
        )).resultWithoutData<FamilesModel>((a) => FamilesModel.fromJson(a));
    return response;
  }
}
