import 'package:annual_leave/core/utils/constant/spaces.dart';
import 'package:annual_leave/src/apps/auth/domain/usecases/logout_usecase.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class ComponentColorDisplay extends StatelessWidget {
  const ComponentColorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("super_app"),
        leading: IconButton(
            onPressed: () => logoutUseCase(),
            icon: const Icon(HugeIcons.strokeRoundedLogout01)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            const Card(
              child: ListTile(
                title: Text("Food"),
                subtitle:
                    Text("you can add your meals and calculate yyour calories"),
                leading: Icon(HugeIcons.strokeRoundedNaturalFood),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Financial Account"),
                subtitle: Text("Caculate your financal monthly"),
                leading: Icon(HugeIcons.strokeRoundedDollar01),
              ),
            ),
            Card(
              elevation: 0,
              color: theme.colorScheme.primaryFixed,
              child: const ListTile(
                title: Text("Annual Leave"),
                subtitle: Text("add yor leaves and holiday"),
                leading: Icon(HugeIcons.strokeRoundedOffice),
              ),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: const Text("s"),
              icon: const Icon(Icons.abc),
            ),
            const TextField(),
            const Chip(label: Text("data")),
            ElevatedButton(onPressed: () {}, child: const Text("data")),
            TextButton(onPressed: () {}, child: const Text("text btton")),
            Row(
              children: [
                IconButton.filledTonal(
                    onPressed: () {}, icon: const Icon(Icons.r_mobiledata)),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(Icons.r_mobiledata)),
                IconButton.outlined(
                    onPressed: () {}, icon: const Icon(Icons.r_mobiledata)),
              ],
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  label: const Text("label"),
                  icon: const Icon(Icons.access_alarm_rounded),
                ),
                const CloseButton(),
                FilledButton(onPressed: () {}, child: const Text("data"))
              ],
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: const Text("s"),
              icon: const Icon(Icons.abc),
            ),
            const LinearProgressIndicator(),
            const Icon(HugeIcons.strokeRoundedAddCircleHalfDot)
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
