import 'package:flutter/material.dart';
import 'package:partani_app/pages/confirmation_page.dart';
import 'package:partani_app/widgets/custom_button.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }
}

_buildChild(BuildContext context) => Container(
      width: 414,
      height: 277,
      decoration: BoxDecoration(
        color: const Color(0xffF3F9F3),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          children: [
            const Text(
              'Apakah anda yakin mengkonfirmasi pesanan?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 42),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  width: 77,
                  height: 27,
                  color: const Color(0xffC6D3C3),
                  label: 'Cancel',
                  textColor: Colors.black,
                  fontSize: 14,
                  onTap: () => Navigator.pop(context),
                ),
                const SizedBox(width: 57),
                CustomButton(
                  width: 77,
                  height: 27,
                  color: const Color(0xff64AA54),
                  label: 'Ya',
                  textColor: Colors.white,
                  fontSize: 14,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationPage(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );

class DialogHelper {
  static confirmation(context) => showDialog(
      context: context, builder: (context) => const ConfirmationDialog());
}
