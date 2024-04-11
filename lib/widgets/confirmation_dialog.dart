// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:partani_app/pages/confirmation_page.dart';
import 'package:partani_app/widgets/custom_button.dart';

class ConfirmationDialog extends StatelessWidget {
  final String title;
  final void Function() onTapCancel;
  final void Function() onTapYa;
  const ConfirmationDialog({
    super.key,
    required this.title,
    required this.onTapCancel,
    required this.onTapYa,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(),
    );
  }

  Widget _buildChild() {
    return Container(
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
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
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
                  onTap: onTapCancel,
                ),
                const SizedBox(width: 57),
                CustomButton(
                  width: 77,
                  height: 27,
                  color: const Color(0xff64AA54),
                  label: 'Ya',
                  textColor: Colors.white,
                  fontSize: 14,
                  onTap: onTapYa,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DialogHelper {
  static confirmation(context) => showDialog(
        context: context,
        builder: (context) => ConfirmationDialog(
          title: 'Apakah anda yakin mengkonfirmasi pesanan?',
          onTapCancel: () => Navigator.pop(context),
          onTapYa: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ConfirmationPage(),
            ),
          ),
        ),
      );
  static reject(context) => showDialog(
        context: context,
        builder: (context) => ConfirmationDialog(
          title: 'Apakah anda yakin ingin menolak pesanan?',
          onTapCancel: () => Navigator.pop(context),
          onTapYa: () => Navigator.pop(context),
        ),
      );
}
