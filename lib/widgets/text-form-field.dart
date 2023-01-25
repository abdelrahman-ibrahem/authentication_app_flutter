import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    this.secure = false,
    required this.label,
    required this.keyboardType,
  });
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool secure;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: label,
          prefix: keyboardType == TextInputType.emailAddress
              ? const Icon(Icons.person)
              : const Icon(Icons.lock),
        ),
        obscureText: secure,
        controller: controller,
        keyboardType: keyboardType,
      ),
    );
  }
}
