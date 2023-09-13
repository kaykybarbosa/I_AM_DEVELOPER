import 'package:flutter/material.dart';

class BtnContacts extends StatelessWidget {
  const BtnContacts(
      {required this.onPressed,
      required this.linkContact,
      required this.title,
      required this.assetImage,
      this.fontSize = 16.0,
      super.key});

  final Function(Uri link) onPressed;
  final Uri linkContact;
  final AssetImage assetImage;
  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          padding: const EdgeInsets.all(10.0),
          backgroundColor: const Color.fromARGB(255, 215, 215, 215),
        ),
        onPressed: () => onPressed(linkContact),
        child: Row(
          children: [
            const SizedBox(width: 5.0),
            Image(
              image: assetImage,
              width: 30.0,
            ),
            const SizedBox(width: 5.0),
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            )
          ],
        ),
      ),
    );
  }
}