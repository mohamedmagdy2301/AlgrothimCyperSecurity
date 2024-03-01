// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BuildForm extends StatelessWidget {
//   BuildForm(
//       {super.key,
//       required this.word,
//       required this.keyNumber,
//       required this.submitForm,
//       required this.titleButton});
//
//   final formKey = GlobalKey<FormState>();
//   final String titleButton;
//   String word;
//   int keyNumber;
//   final void Function() submitForm;
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           const SizedBox(height: 25),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
//             child: TextFormField(
//               validator: (value) {
//                 if (value == "" || value == null) {
//                   return 'Please enter a word';
//                 }
//                 return null;
//               },
//               decoration: const InputDecoration(
//                 labelText: 'Enter Word',
//                 border: OutlineInputBorder(),
//               ),
//               onSaved: (value) {
//                 word = value!;
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
//             child: TextFormField(
//               validator: (value) {
//                 if (value == null || value==0) {
//                   return 'Please enter an key';
//                 }
//                 return null;
//               },
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: 'Enter Key',
//                 border: OutlineInputBorder(),
//               ),
//               onSaved: (value) {
//                 keyNumber = int.parse(value!);
//               },
//             ),
//           ),
//           const SizedBox(height: 15),
//           GestureDetector(
//             onTap: submitForm,
//             child: Container(
//               height: 50,
//               width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: const Color.fromARGB(255, 138, 137, 137),
//               ),
//               child: Center(
//                 child: Text(
//                   titleButton,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
