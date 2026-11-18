import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF7622),
        minimumSize: Size(double.infinity, 68),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(18),
        ),
      ),

      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: .bold),
      ),
    );
  }
}
