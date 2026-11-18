import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
    this.isVisable, {
    super.key,
    required this.name,
    required this.icon,
    required this.hint,
  });
  final String name;
  final IconData? icon;
  final String hint;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          name,
          style: TextStyle(
            color: Color(0xff121223),

            fontSize: 25,
            fontWeight: .bold,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xff121223), width: 2),
            ),
            fillColor: Color(0xffF0F5FA),
            filled: true,
            hintText: hint,
            suffixIcon: Icon(icon, color: Color(0xff121223)),
          ),
          obscureText: isVisable,
        ),
      ],
    );
  }
}
