import 'package:cyber/widgets/cipher_algorthim.dart';
import 'package:flutter/material.dart';

class AffineCipherScreen extends StatelessWidget {
  const AffineCipherScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CipherAlgorthimScreen(
      title: 'Affine Cipher',
      isCaeser: false,
    );
  }
}
