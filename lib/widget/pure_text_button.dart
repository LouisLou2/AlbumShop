import 'package:flutter/material.dart';

class PureTextButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;

  const PureTextButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 18,
        ),
      )
    );
  }
}