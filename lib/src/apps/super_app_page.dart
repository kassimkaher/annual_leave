import 'package:annual_leave/core/utils/constant/keys.dart';
import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/auth/domain/usecases/logout_usecase.dart';
import 'package:annual_leave/src/widgets/custom_containder.dart';
import 'package:annual_leave/src/widgets/spaces.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SuperAppPage extends StatelessWidget {
  const SuperAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.inversePrimary,
        title: const Text("super_app"),
        leading: IconButton(
            onPressed: () => logoutUseCase(),
            icon: const Icon(HugeIcons.strokeRoundedLogout01)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => navigatorKey.currentState?.pushNamed("food_app"),
              child: BoxView(
                borderRadius: kDefaultBorderRadius,
                gradient: LinearGradient(colors: [
                  theme.colorScheme.primaryContainer,
                  theme.colorScheme.primary
                ], transform: const GradientRotation(0.7)),
                child: const ListTile(
                  title: Text("Food"),
                  subtitle: Text(
                      "you can add your meals and calculate yyour calories"),
                  leading: Icon(HugeIcons.strokeRoundedNaturalFood),
                ),
              ),
            ),
            const VerticalSpace(),
            GestureDetector(
              onTap: () =>
                  navigatorKey.currentState?.pushNamed("financial_app"),
              child: const BoxView(
                borderRadius: kDefaultBorderRadius,
                gradient: LinearGradient(
                    colors: [Colors.tealAccent, Colors.teal],
                    transform: GradientRotation(0.7)),
                child: ListTile(
                  title: Text("Financial Account"),
                  subtitle: Text("Caculate your financal monthly"),
                  leading: Icon(HugeIcons.strokeRoundedDollar01),
                ),
              ),
            ),
            const VerticalSpace(),
            GestureDetector(
              onTap: () => navigatorKey.currentState?.pushNamed("user_leaves"),
              child: BoxView(
                borderRadius: kDefaultBorderRadius,
                gradient: LinearGradient(
                    colors: [Colors.amber, theme.colorScheme.primaryContainer],
                    transform: const GradientRotation(0.7)),
                child: const ListTile(
                  title: Text("Annual Leave"),
                  subtitle: Text("add yor leaves and holiday"),
                  leading: Icon(HugeIcons.strokeRoundedOffice),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(HugeIcons.strokeRoundedDoc01),
      ),
    );
  }
}
