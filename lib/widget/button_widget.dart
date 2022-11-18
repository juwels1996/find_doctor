import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double height;
  final Function onPressed;

  CustomButton(
      {required this.child,
        this.color,
        this.height = 55,
        required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      minWidth: double.infinity,
      height: height,
      child: child,
      onPressed: () => onPressed(),
      color: color ?? Theme.of(context).primaryColor,
    );
  }
}
