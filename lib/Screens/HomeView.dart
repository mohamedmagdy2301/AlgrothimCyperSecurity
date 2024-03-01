
import 'package:flutter/material.dart';

import '../widgets/Decryption.dart';
import '../widgets/Encryption.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Word Converter',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          toolbarHeight: 90,
          bottom: const TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color.fromARGB(255, 255, 255, 255),
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 100, 99, 99),
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
          children: [
            Decryption(),
            Encryption(),
          ],
        ),
      ),
    );
  }
}
