import 'package:flutter/material.dart';
import 'package:i_am_developer/show_images.dart';
import 'package:i_am_developer/uri_images.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 241, 241),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 215, 215, 215),
          title: const Text(
            'Skills',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              width: double.infinity,
              child: const Text(
                'Some of the technologies i use:',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'Lora',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
           const Divider(
              thickness: 3.0,
              color: Colors.black,
              indent: 25.0,
              endIndent: 25.0,
            ),
            const SizedBox(height: 50.0),
            const ShowImages(
              images: uriImages,
            ),
            const ShowImages(
              images: uriImages2,
            ),
            const ShowImages(
              images: uriImages3,
            ),
          ],
        ),
      ),
    );
  }
}
