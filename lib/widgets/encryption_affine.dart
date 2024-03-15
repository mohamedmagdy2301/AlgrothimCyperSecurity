import 'package:cyber/Algrothims/const.dart';
import 'package:flutter/material.dart';

import '../Algrothims/algrothim_affine.dart';
import 'Dialog.dart';

class EncryptionAffine extends StatefulWidget {
  const EncryptionAffine({super.key});

  @override
  _EncryptionState createState() => _EncryptionState();
}

class _EncryptionState extends State<EncryptionAffine> {
  final formKey = GlobalKey<FormState>();
  String? word;
  int? keyAlpha;
  int? keyBeta;
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      showDialog(
        context: context,
        builder: (context) {
          return buildDialog(
            keyBeta: keyBeta!,
            isCaesar: false,
            word: word!,
            keyNumber: keyAlpha!,
            title: 'Encrypted Word',
            newWord: charactersEn.contains(word![0])
                ? AlgorithmAffine().encyrptionForAffine(keyAlpha!, keyBeta!, word!, 26)
                : AlgorithmAffine().encyrptionForAffine(keyAlpha!, keyBeta!,  word!, 28),
          );
        },
      );
      controller1.clear();
      controller2.clear();
      controller3.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical:10),
            child: TextFormField(
              controller: controller1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a word';
                }
                return null;
              },
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ), // hintInp,

                label: Text(
                  'Enter Word',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),

                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                word = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: controller2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an alpha key';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ), // hintInp,

                label: Text(
                  'Enter Alpha Key',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),

                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                keyAlpha = int.parse(value!);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextFormField(
              controller: controller3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an beta key';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ), // hintInp,
                label: Text(
                  'Enter Beta Key',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                keyBeta = int.parse(value!);
              },
            ),
          ),
          const SizedBox(height: 20),
              GestureDetector(
                onTap: submitForm,
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                  child: const Center(
                    child: Text(
                      'Encrypt',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        
    );
  }
}