import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flextras/flextras.dart';
import 'package:gap/gap.dart';
import 'package:print_kiosk_app/constants.dart';
import 'package:print_kiosk_app/presentation/components/print_header/print_header.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const PrintHeader(),
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: const Text(appTitle),
        automaticallyImplyLeading: false,
        actions: const [SizedBox.shrink()],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: PaddedColumn(
          mainAxisSize: MainAxisSize.min,
          padding: const EdgeInsets.all(16),
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You have 10 credits',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
            const Text('$pricePerSheet credits per sheet'),
            const Gap(32),
            Builder(builder: (context) {
              return SizedBox(
                height: 46.0,
                child: ElevatedButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: const Text('Print a file'),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
