import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/extensions/string_extention.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/core/utils/injector.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/data/familes_model.dart';
import 'package:annual_leave/src/apps/tmwn_dash/home/presentation/cubit/family_cubit.dart';
import 'package:annual_leave/src/widgets/custom_input_field.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FamilyCubit familyBloc;
  late TextEditingController _searchController;
  late TextEditingController _searchOldNumberController;
  @override
  void initState() {
    super.initState();
    familyBloc = getIt<FamilyCubit>();
    familyBloc.getFamily();
    _searchController = TextEditingController();
    _searchOldNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: familyBloc,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          flexibleSpace: SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/tmwn_logo.svg",
                  width: 100,
                ),
              ],
            ),
          )),
        ),
        body: BlocBuilder<FamilyCubit, FamilyState>(
            builder: (context, state) => switch (state.dataStatus) {
                  DataStatus.loading => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  DataStatus.loaded =>
                    FamilesListView(familes: state.familyModel!),
                  _ => InkWell(
                      onTap: () {
                        familyBloc.getFamily();
                      },
                      child: Center(
                        child: Text(
                            "Error:${state.error?.error?.message?.tr() ?? "unknown"}"),
                      ),
                    )
                }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
                offset: const Offset(0, 0),
              ),
            ],
            color: Colors.white,
            shape: SmoothRectangleBorder(
              // side: BorderSide(
              //   color: borderColor ?? Colors.transparent,
              // width: borderWidth ?? 0,
              // ),
              borderRadius: SmoothBorderRadius(
                cornerRadius: 30,
                cornerSmoothing: 1,
              ),
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        familyBloc.getFamily(
                            number: _searchController.text,
                            oldNumber: _searchOldNumberController.text);
                      },
                      child: const Text("Search")),
                  const SizedBox(width: kDefaultPadding),
                  Expanded(
                      child: CustomInputField(
                    controller: _searchController,
                    label: "رقم البطاقة",
                    leftPadding: 8,
                    rightPadding: 8,
                  )),
                  const SizedBox(width: kDefaultPadding),
                  Expanded(
                      child: CustomInputField(
                    controller: _searchOldNumberController,
                    label: "الرقم القديم ",
                    leftPadding: 8,
                    rightPadding: 8,
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FamilesListView extends StatelessWidget {
  const FamilesListView({
    super.key,
    required this.familes,
  });
  final FamilesModel familes;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(kDefaultPadding),
        itemBuilder: (context, i) => Card(
              child: ListTile(
                isThreeLine: true,
                contentPadding: const EdgeInsets.all(12),
                leading: const CircleAvatar(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      LucideIcons.user,
                      size: 25,
                    ),
                  ),
                ),
                title: Text(
                  familes.data[i].mainMember.nationalIdCard?.fullName ?? "",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  familes.data[i].center.branch.name.tr() ?? "",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Chip(
                    backgroundColor: familes.data[i].registeredAt == null
                        ? Colors.red.shade100
                        : Colors.green.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          color: familes.data[i].registeredAt == null
                              ? Colors.red
                              : Colors.green,
                          width: 1),
                    ),
                    label: Text(
                      familes.data[i].registeredAt == null
                          ? "غير مسجل"
                          : "مسجل",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: familes.data[i].registeredAt == null
                              ? Colors.red.shade900
                              : Colors.green.shade900),
                    )),
              ),
            ),
        separatorBuilder: (a, ii) => const SizedBox(height: kDefaultPadding10),
        itemCount: familes.data.length);
  }
}
