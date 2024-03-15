import 'package:cyber/widgets/decryption_affine.dart';
import 'package:cyber/widgets/decryption_caeser.dart';
import 'package:cyber/widgets/encryption_affine.dart';
import 'package:cyber/widgets/encryption_caesar.dart';
import 'package:flutter/material.dart';

class CipherAlgorthimScreen extends StatelessWidget {
  final String title;
  final bool isCaeser;
  const CipherAlgorthimScreen(
      {super.key, required this.title, required this.isCaeser});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          toolbarHeight: 90,
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            indicator: BoxDecoration(
              // color: Color.fromARGB(255, 100, 99, 99),
              color: Color.fromARGB(179, 51, 4, 116),

              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
            ),
            tabs: <Widget>[
              Tab(
                text: "Decrypt",
              ),
              Tab(
                text: "Encrypt",
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: isCaeser
                ? [
                    const DecryptionCaesar(),
                    EncryptionCaesar(),
                  ]
                : [
                    DecryptionAffine(),
                    const EncryptionAffine(),
                  ]),
      ),
    );
  }
}
