import 'package:cyber/Screens/affine_cipher.dart';
import 'package:flutter/material.dart';
import 'caesar_cipher.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Choose an Algorithm !!',
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(225, 255, 255, 255),
                minimumSize: const Size(230, 45),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CaesarCipherScreen()));
              },
              child: const Text(
                'Caesar Cipher',
                style: TextStyle(
                                    color: Color.fromARGB(176, 67, 5, 155),

                  fontWeight: FontWeight.bold,
                  fontSize:25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(225, 255, 255, 255),
                minimumSize: const Size(230, 45),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AffineCipherScreen()));
              },
              child: const Text(
                'Affine Cipher',
                style: TextStyle(
                  color: Color.fromARGB(176, 67, 5, 155),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        )));
  }
}
