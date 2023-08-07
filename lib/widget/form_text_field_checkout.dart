import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    Key? key,
    required this.validator,
    required this.textType,
    required this.label,
    required this.hintText,
  }) : super(key: key);
  final String? validator;
  final TextInputType? textType;
  final String label;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textType,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validator;
        }
        return null;
      },
      // onChanged: widget.function,
      onTap: () {},
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade100,
            width: 1.0,
          ),
        ),
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontStyle: FontStyle.normal,
        ),
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade100,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
