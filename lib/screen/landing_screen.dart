import 'package:flutter/material.dart';
import 'package:qrsimplescanner/screen/qr_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                "QR Simple Scanner",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // Foreground color
                      onPrimary:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      // Background color
                      primary: Theme.of(context).colorScheme.secondaryContainer,
                    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QRScreen())),
                    child: const Text("Scan QR from Camera")),
                const SizedBox(height: 40),
                // ElevatedButton(
                //     onPressed: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const QRScreen())),
                //     child: const Text("Scan QR from Gallery")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
