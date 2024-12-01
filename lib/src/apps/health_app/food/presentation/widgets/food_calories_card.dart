import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/src/apps/health_app/food/data/food_calories_model/food_calories_model.dart';
import 'package:annual_leave/src/apps/health_app/food/domain/entity/food_calories_entity.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/logic/food_calories/food_calories_logic/food_calories_cubit.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/logic/food_calories/operation/food_calories_operation_cubit.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/pages/add_food_calories_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hugeicons/hugeicons.dart';

class FoodCaloriesCard extends StatelessWidget {
  const FoodCaloriesCard({
    super.key,
    required this.item,
  });

  final FoodCaloriesModel item;

  @override
  Widget build(BuildContext context) {
    final fcCubit = context.read<FoodCaloriesCubit>();
    final FoodCaloriesOperationCubit fcOperationCubit =
        FoodCaloriesOperationCubit();
    final theme = Theme.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onLongPress: item.id == null
            ? null
            : () {
                fcOperationCubit.deleteData(item.id!);
              },
        onTap: () async {
          final data = await showModalBottomSheet<FoodCaloriesEntity>(
              context: context,
              builder: (context) {
                return FoodCaloriesForm(
                  foodCaloriesModel: item,
                  index: fcCubit.state.foodCalories.indexOf(item),
                );
              });
          if (data == null) {
            return;
          }
          fcCubit.updateData(data);
        },
        child: ListTile(
          leading: BlocBuilder<FoodCaloriesOperationCubit,
              FoodCaloriesOperationState>(
            bloc: fcOperationCubit,
            builder: (context, state) {
              return CircleAvatar(
                child: state.remoteDataStatus == RemoteDataStatus.loading
                    ? const CircularProgressIndicator(
                        color: Colors.black,
                      )
                    : const Icon(HugeIcons.strokeRoundedOrganicFood),
              );
            },
          ),
          title: Text(item.title!, style: theme.textTheme.titleSmall),
          subtitle: Text(
            item.description ?? "",
            style: theme.textTheme.bodyMedium,
          ),
          trailing: Column(
            children: [
              Text(
                item.calories.toString().toCalories(),
                style: theme.textTheme.titleSmall,
              ),
              Text(
                item.grams.toString().toGrams(),
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
