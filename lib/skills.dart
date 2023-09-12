import 'package:flutter/material.dart';
import 'package:i_am_developer/uri_Images.dart';

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
                  fontSize: 23.0,
                  fontFamily: 'Lora',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(
              thickness: 3.0,
              color: Colors.black,
              indent: 30.0,
              endIndent: 30.0,
            ),
            const SizedBox(height: 50.0),
            Column(
              children: [
                Wrap(
                  children: uriImages.asMap().entries.map((e) {
                    String imageUri = e.value.imageUri;

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Image(
                        image: AssetImage(imageUri),
                        width: 60,
                      ),
                    );
                  }).toList(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
