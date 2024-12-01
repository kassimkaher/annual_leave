import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/modals/popup/popup_modal.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/health_app/food/domain/entity/food_calories_entity.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/logic/food_calories/food_calories_logic/food_calories_cubit.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/pages/add_food_calories_form.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/widgets/food_calories_card.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodCaloriesPage extends StatelessWidget {
  const FoodCaloriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => FoodCaloriesCubit()..getFoodCalories(),
      child: Scaffold(
        //  backgroundColor: theme.colorScheme.onInverseSurface,
        body: SafeArea(
          child: Stack(
            children: [
              const SizedBox(
                width: double.infinity,
                height: double.infinity,
              ),
              BlocBuilder<FoodCaloriesCubit, FoodCaloriesState>(
                  builder: (context, state) => switch (state.remoteDataStatus) {
                        RemoteDataStatus.loading =>
                          const Center(child: CircularProgressIndicator()),
                        RemoteDataStatus.error => Center(
                            child: Text(state.error.toString()),
                          ),
                        RemoteDataStatus.loaded ||
                        RemoteDataStatus.cache ||
                        RemoteDataStatus.subloading =>
                          Stack(
                            children: [
                              Column(
                                children: [
                                  Expanded(
                                    child: ListView.builder(
                                      padding: const EdgeInsets.symmetric(
                                              horizontal: kDefaultPadding,
                                              vertical: 12)
                                          .copyWith(
                                              bottom: kDefaultPadding * 2),
                                      itemCount: state.foodCalories.length,
                                      itemBuilder: (context, index) {
                                        final item = state.foodCalories[index];
                                        return FoodCaloriesCard(item: item);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              if (state.foodCalories.isEmpty)
                                const Icon(Icons.hourglass_empty)
                            ],
                          ),
                        _ => SafeArea(
                            child: Container(
                              child: Text(state.remoteDataStatus.name),
                            ),
                          ),
                      }),
            ],
          ),
        ),
        floatingActionButton: FilledButton.tonalIcon(
          label: Text("add_food_button".tr()),
          onPressed: () async {
            final data = await showForm<FoodCaloriesEntity>(
                child: const FoodCaloriesForm(),
                title: "add_food_calories".tr());
            if (data == null) {
              return;
            }
            context.read<FoodCaloriesCubit>().updateData(data);
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class Tapview extends StatelessWidget {
  const Tapview({super.key});

  @override
  Widget build(BuildContext context) {
    return const BoxView(
        borderRadius: 12,
        color: Colors.black87,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [],
        ));
  }
}
