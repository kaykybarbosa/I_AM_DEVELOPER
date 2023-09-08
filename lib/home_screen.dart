import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 2, 70, 102),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Welcome in my App!',
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor: const Color.fromARGB(255, 14, 90, 153),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 40.0,
                    ),
                    SizedBox(width: 5.0),
                    Text('Profile', style: TextStyle(fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    backgroundColor: const Color.fromARGB(255, 14, 90, 153),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                child: const Row(
                  children: [
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.construction_rounded,
                      size: 40.0,
                    ),
                    SizedBox(width: 5.0),
                    Text('Skills', style: TextStyle(fontSize: 20.0))
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contacts');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    padding: const EdgeInsets.all(10.0),
                    backgroundColor: const Color.fromARGB(255, 14, 90, 153)),
                child: const Row(
                  children: [
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.contact_mail_rounded,
                      size: 40.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Contacts',
                      style: TextStyle(fontSize: 21.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}