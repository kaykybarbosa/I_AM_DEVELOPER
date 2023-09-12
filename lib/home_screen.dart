import 'package:flutter/material.dart';
import 'package:i_am_developer/buttons/btn_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 244, 241, 241),
              Color.fromARGB(255, 215, 215, 215)
            ], begin: Alignment.centerLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                  'Welcome in my App!',
                  style: TextStyle(
                    fontSize: 31.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              BtnHome(
                text: 'Profile',
                icon: Icons.account_circle,
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              BtnHome(
                text: 'Skills',
                icon: Icons.construction_rounded,
                onPressed: () {
                  Navigator.pushNamed(context, '/skills');
                },
              ),
              BtnHome(
                text: 'Contacts',
                icon: Icons.contact_mail_rounded,
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}