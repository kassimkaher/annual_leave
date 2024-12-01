import 'package:annual_leave/core/enums/enums.dart';
import 'package:annual_leave/core/services/local_db.dart';
import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/annual_leave/logic/annual/annual_leav_cubit.dart';
import 'package:annual_leave/src/widgets/manager_leave_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ManagerLeavesPageContent extends StatefulWidget {
  const ManagerLeavesPageContent({super.key});

  @override
  State<ManagerLeavesPageContent> createState() =>
      _ManagerLeavesPageContentState();
}

class _ManagerLeavesPageContentState extends State<ManagerLeavesPageContent> {
  late AnnualLeavCubit annualLeavCubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    annualLeavCubit = context.read<AnnualLeavCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(LocalDatabase.getUser()?.image ??
                "https://via.placeholder.com/150"),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              LocalDatabase.logOut();
              navigatorKey.currentState!
                  .pushNamedAndRemoveUntil("google_signin", (route) => false);
            },
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Manager Leaves'),
      ),
      body: BlocConsumer<AnnualLeavCubit, AnnualLeavState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return switch (state.remoteDataStatus) {
            RemoteDataStatus.loading => const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  ),
                ],
              ),
            RemoteDataStatus.loaded => state.leaves.isEmpty
                ? InkWell(
                    onTap: () => annualLeavCubit.getCell(),
                    child: const Center(
                      child: Text("No data found"),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: _refreshData,
                    child: ListView.builder(
                      // reverse: true,

                      padding: const EdgeInsets.all(kDefaultPadding),
                      itemCount: state.leaves.length,
                      itemBuilder: (context, index) {
                        return ManagerCard(
                            annualLeavEntity: state.leaves[index]);
                      },
                    ),
                  ),
            RemoteDataStatus.error => TextButton(
                onPressed: () => annualLeavCubit.init(),
                child: const Text(
                    "Error connect and retrive data from google sheet")),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }

  Future<void> _refreshData() async {
    await annualLeavCubit.getCell();
    setState(() {});
  }
}
