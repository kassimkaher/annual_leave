import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/health_app/food/data/food_calories_model/food_calories_model.dart';
import 'package:annual_leave/src/apps/health_app/food/presentation/logic/food_calories/operation/food_calories_operation_cubit.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:annual_leave/src/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodCaloriesForm extends StatefulWidget {
  const FoodCaloriesForm({
    super.key,
    this.index,
    this.foodCaloriesModel,
  });

  final int? index;
  final FoodCaloriesModel? foodCaloriesModel;

  @override
  State<FoodCaloriesForm> createState() => _FoodCaloriesFormState();
}

class _FoodCaloriesFormState extends State<FoodCaloriesForm> {
  late FoodCaloriesOperationCubit fCOperationCubit;
  @override
  void initState() {
    super.initState();
    fCOperationCubit = FoodCaloriesOperationCubit();
    if (widget.foodCaloriesModel != null) {
      fCOperationCubit.fillForm(widget.foodCaloriesModel!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return BlocProvider.value(
        value: fCOperationCubit,
        child: BlocConsumer<FoodCaloriesOperationCubit,
            FoodCaloriesOperationState>(
          listener: (context, state) {
            if (state.remoteDataStatus == RemoteDataStatus.loaded) {
              navigatorKey.currentState!
                  .pop(fCOperationCubit.foodCaloriesEntity);
            }
          },
          builder: (context, state) => Form(
            key: fCOperationCubit.formKey,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              padding: const EdgeInsets.all(kDefaultPadding)
                  .copyWith(bottom: query.viewInsets.bottom),
              child: Wrap(children: [
                TextInputField(
                  label: "Title".tr(),
                  controller: fCOperationCubit.titleController,
                  validatThis: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter title";
                    }
                    return null;
                  },
                ),
                const VerticalSpace(),
                TextInputField(
                  label: "Grams".tr(),
                  controller: fCOperationCubit.gramstController,
                  validatThis: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter grams";
                    }
                    if (double.tryParse(value) == null) {
                      return "Please correct number of grams";
                    }
                    return null;
                  },
                ),
                const VerticalSpace(),
                TextInputField(
                  label: "Calories".tr(),
                  controller: fCOperationCubit.caloriesController,
                  validatThis: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Calories";
                    }
                    if (double.tryParse(value) == null) {
                      return "Please correct number of Calories";
                    }
                    return null;
                  },
                ),
                const VerticalSpace(),
                TextAreaInputField(
                  label: "description".tr(),
                  controller: fCOperationCubit.descriptionController,
                ),
                const VerticalSpace(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        navigatorKey.currentState!.pop();
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed:
                          state.remoteDataStatus == RemoteDataStatus.loading
                              ? null
                              : () {
                                  if (widget.foodCaloriesModel != null) {
                                    fCOperationCubit.update(
                                        widget.foodCaloriesModel!.id!,
                                        widget.index!);
                                    return;
                                  }
                                  fCOperationCubit.addFoodCaloriesEvent();
                                },
                      child: state.remoteDataStatus == RemoteDataStatus.loading
                          ? const CircularProgressIndicator()
                          : Text(widget.foodCaloriesModel != null
                              ? "Update".tr()
                              : "Save".tr()),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
