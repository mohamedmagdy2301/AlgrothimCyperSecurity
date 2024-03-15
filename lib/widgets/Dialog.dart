// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class buildDialog extends StatelessWidget {
  const buildDialog(
      {super.key,
      required this.word,
      required this.keyNumber,
      required this.title,
      required this.newWord,
      required this.isCaesar,
      required this.keyBeta});
  final String word;
  final int keyNumber;
  final int keyBeta;
  final String title;
  final String newWord;
  final bool isCaesar;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(fontSize: 25.5, fontWeight: FontWeight.bold),
      ),
      content: Text(
        'Plain  : $word\nCipher  : $newWord'
        '${isCaesar ? "\nKey   : $keyNumber " : '\nAlpha   : $keyNumber\nBate   : $keyBeta'}',
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      // Algorithm().charactersEn.contains(word[0])?

      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'OK',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(179, 51, 4, 116),
            ),
          ),
        ),
      ],
    );
  }
}
