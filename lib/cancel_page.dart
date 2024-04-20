import 'package:flutter/material.dart';
import 'package:partani_app/dashboard_page.dart';

class CancelPage extends StatefulWidget {
  const CancelPage({super.key});

  @override
  State<CancelPage> createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Pesanan telah Dibatalkan !!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DashboardPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff64AA54),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16),
                    minimumSize: const Size(117, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Ok',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
