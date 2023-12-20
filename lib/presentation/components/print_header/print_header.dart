import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:print_kiosk_app/constants.dart';
import 'package:print_kiosk_app/core/controllers/printer_controller/printer_controller.dart';

class PrintHeader extends HookWidget {
  const PrintHeader({super.key});

  Future<void> _printDialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        title: Text('Printing...'),
        content: SizedBox(
          height: 120,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedFile = useState<File?>(null);
    final numberOfCopies = useState<int>(1);
    final canPrint = useState<bool>(false);

    useEffect(() {
      canPrint.value = selectedFile.value != null;
      return null;
    }, [selectedFile.value]);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(child: Text(appTitle)),
          ListTile(
            title: const Text('Select a file to print'),
            subtitle: Text(selectedFile.value?.path ?? ''),
            trailing: const Icon(Icons.search),
            onTap: () async {
              FilePickerResult? result = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: allowedExtensions,
                lockParentWindow: true,
                allowMultiple: false,
              );

              if (result != null) {
                File file = File(result.files.first.path!);
                selectedFile.value = file;
              }
            },
          ),
          ListTile(
            title: const Text('Select number of copies'),
            subtitle: PaddedRow(
              padding: const EdgeInsets.all(8),
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: numberOfCopies.value > 1
                      ? () {
                          numberOfCopies.value--;
                        }
                      : null,
                  icon: const Icon(Icons.remove),
                  color: Colors.red,
                ),
                ElevatedButton(onPressed: null, child: Text(numberOfCopies.value.toString())),
                IconButton(
                  onPressed: () {
                    numberOfCopies.value++;
                  },
                  icon: const Icon(Icons.add),
                  color: Colors.green,
                ),
              ],
            ),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 46.0,
              child: Consumer(builder: (context, ref, _) {
                return ElevatedButton.icon(
                  onPressed: canPrint.value
                      ? () {
                          ref
                              .read(executePrintControllerProvider.notifier)
                              .call(
                                selectedFile.value!,
                                numberOfCopies.value,
                              )
                              .then(
                                (_) => Navigator.of(context)
                                  ..pop()
                                  ..pop(),
                              );

                          _printDialogBuilder(context);
                        }
                      : null,
                  icon: const Icon(Icons.print),
                  label: const Text('Print'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
