import 'package:flutter/material.dart';
import 'package:i_am_developer/contacts.dart';
import 'package:i_am_developer/home_screen.dart';
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
        '/dev': (context) => const IAmDeveloperPage(),
        '/home': (context) => const HomeScreen(),
        '/contacts': (context) => const Contacts(),
        '/skills': (context) => const Skills()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 2, 70, 102),
        ),
      ),
    );
  }
}

class IAmDeveloperPage extends StatefulWidget {
  const IAmDeveloperPage({super.key});

  @override
  State<IAmDeveloperPage> createState() => _IAmDeveloperState();
}

class _IAmDeveloperState extends State<IAmDeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 70, 102),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontFamily: 'Lora',
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 71, 143),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: const Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage('assets/my_face/kayky.jpg'),
                    radius: 35.0),
                SizedBox(width: 10.0),
                Text(
                  'Kayky Barbosa',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(width: 110.0),
              Text(
                'Back-End Developer',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lora'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}