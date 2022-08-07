import 'package:flutter/material.dart';

class costumbutton extends StatelessWidget {
  const costumbutton({Key? key, required this.text, required this.ontap, required this.color})
      : super(key: key);

  final String text;
  final VoidCallback ontap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      minWidth: double.infinity,
      color:color,
      splashColor: Colors.grey,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
