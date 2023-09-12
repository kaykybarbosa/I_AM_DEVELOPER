import 'package:flutter/material.dart';

class BtnHome extends StatelessWidget {
  const BtnHome({required this.text, required this.icon, required this.onPressed, super.key});

  final String text;
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(10.0),
          backgroundColor: const Color.fromARGB(255, 215, 215, 215),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.black,
            ),
            const SizedBox(width: 5.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20.0,
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
