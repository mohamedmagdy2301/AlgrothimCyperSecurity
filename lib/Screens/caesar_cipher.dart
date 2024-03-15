import 'package:cyber/widgets/cipher_algorthim.dart';
import 'package:flutter/material.dart';

class CaesarCipherScreen extends StatelessWidget {
  const CaesarCipherScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CipherAlgorthimScreen(
      title: 'Caesar Cipher',
      isCaeser: true,
    );
  }
}
