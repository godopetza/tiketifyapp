import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final GestureTapCallback onPressed;
  final Color color;

  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 25, vertical: 15))),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
