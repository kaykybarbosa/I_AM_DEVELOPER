import 'package:flutter/material.dart';
import 'package:i_am_developer/contacts.dart';
import 'package:i_am_developer/home_screen.dart';
import 'package:i_am_developer/profile.dart';
import 'package:i_am_developer/skills.dart';

void main() => runApp(const IAmDeveloper());

class IAmDeveloper extends StatelessWidget {
  const IAmDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Am Developer',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const Profile(),
        '/skills': (context) => const Skills(),
        '/contacts': (context) => const Contacts()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}