import 'package:flutter/material.dart';

Widget reUsableWidgetRegScreen({
  required Icon fieldIcon,
  required String lblText,
  required String fieldHintText,
  required TextEditingController fieldController,
  required TextInputType inputType,
  String? Function(String?)? validator, // Validator function
}) {
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
        label: Text(lblText),
        hintText: fieldHintText,
        prefixIcon: fieldIcon,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      controller: fieldController,
      keyboardType: inputType, // Set the TextInputType here
      validator: validator, // Set the validator function here
    ),
  );
}

// Example of how to use the function with a validator:
// reUsableWidgetRegScreen(
//   fieldIcon: Icon(Icons.email),
//   lblText: 'Email',
//   fieldHintText: 'Enter your email',
//   fieldController: myController,
//   inputType: TextInputType.emailAddress,
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter a valid email';
//     }
//     // Additional validation logic can be added here
//     return null; // Return null if the input is valid
//   },
// );
