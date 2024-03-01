import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Algrothims/algrothim_one.dart';
import 'Dialog.dart';

class Encryption extends StatefulWidget {
  @override
  _EncryptionState createState() => _EncryptionState();
}

class _EncryptionState extends State<Encryption> {
  final formKey = GlobalKey<FormState>();
  String? word;
  int? keyNumber;
  final controller1 = TextEditingController();

  final controller2 = TextEditingController();
  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      showDialog(
        context: context,
        builder: (context) {
          return buildDialog(
            word: word!,
            keyNumber: keyNumber!,
            title: 'Encrypted Word',
            newWord: Algorithm().encyrption(keyNumber!, word!),
          );
        },
      );
      controller1.clear();

      controller2.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 35),
          // const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
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
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: TextFormField(
              controller: controller2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an key';
                }
                return null;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2.0),
                ), // hintInp,

                label: Text(
                  'Enter Key',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),

                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                keyNumber = int.parse(value!);
              },
            ),
          ),
          const SizedBox(height: 15),
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
        ],
      ),
    );
  }
}
