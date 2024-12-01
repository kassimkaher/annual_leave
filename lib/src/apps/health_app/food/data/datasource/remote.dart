import 'package:annual_leave/core/network/data_state.dart';
import 'package:annual_leave/core/network/dio_client.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/core/utils/routes.dart';
import 'package:annual_leave/src/apps/health_app/food/data/food_calories_model/food_calories_model.dart';
import 'package:annual_leave/src/apps/health_app/food/domain/entity/food_calories_entity.dart';

class FoodCaloriesDataSource {
  Future<DataState<List<FoodCaloriesModel>>> getFoodCaloriesDataSource(
      {required int page}) async {
    final response = await (getIt<DioClient>().instance('').get(
              "$foodCaloriesUrl?page=$page",
            ))
        .result<List<FoodCaloriesModel>, List<dynamic>>(
            (foodCaloriesModelFromJson));
    return response;
  }

  Future<DataState<void>> addFoodCaloriesDataSource(
      {required FoodCaloriesEntity postData}) async {
    final response = await (getIt<DioClient>()
            .instance('')
            .post(foodCaloriesUrl, data: postData.toJson()))
        .result<void, void>((s) {});
    return response;
  }

  Future<DataState<void>> updateFoodCaloriesDataSource(
      {required FoodCaloriesEntity postData, required String id}) async {
    final response = await (getIt<DioClient>()
            .instance('')
            .put("$foodCaloriesUrl/$id", data: postData.toJson()))
        .result<void, void>((s) {});
    return response;
  }

  Future<DataState<void>> deleteFoodCaloriesDataSource(
      {required String id}) async {
    final response = await (getIt<DioClient>().instance('').delete(
          "$foodCaloriesUrl/$id",
        )).result<void, void>((s) {});
    return response;
  }
}
