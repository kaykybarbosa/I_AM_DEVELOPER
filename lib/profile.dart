import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

var _about_1 =
    "Hello! Some traits I possess include being a man who is seeking evolution.";
var _about_2 =
    " I believe that we, as human beings, are capable of doing anything, all it takes is time and effort.";
var _about_3 =
    " That's why I'm passionate about software development, because it's an area where you're always learning something new, continually challenging yourself, solving problems, and meeting people who also share those feelings.";
var _about_4 =
    " I enjoy watching anime, play gamer with my friends, training, and reading.";

var _about = _about_1 + _about_2 + _about_3 + _about_4;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 70, 102),
        appBar: AppBar(
          title: const Text(
            'Profile',
          ),
          backgroundColor: const Color.fromARGB(255, 4, 71, 143),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/my_face/kayky.jpg'),
                      radius: 50.0),
                  SizedBox(height: 15.0),
                  Text(
                    'Kayky Barbosa',
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lora'),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Back-End Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'Lora'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Image(
                        image: AssetImage('assets/icons/circulo.png'),
                        color: Colors.white,
                        width: 10,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '04/02/2003',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      SizedBox(width: 15.0),
                      Image(
                        image: AssetImage('assets/icons/circulo.png'),
                        color: Colors.white,
                        width: 10.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Maranhão/ Brasil',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: 350.0,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'About',
                        style: TextStyle(fontSize: 28.0, color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    _about,
                    style: const TextStyle(color: Colors.white, fontSize: 16.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
