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
        appBar: AppBar(
          title: const Center(
            child: Text('I AM DEVELOPER'),
          ),
        ),
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
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 14, 90, 153),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 5.0),
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  const SizedBox(width: 5.0),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Profile',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 14, 90, 153),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 5.0),
                  const Icon(
                    Icons.construction_rounded,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  const SizedBox(width: 5.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.red;
                          }
                          return const Color.fromARGB(255, 14, 90, 153);
                        },
                      ),
                    ),
                    child: const Text(
                      'Skills',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 110.0),
              padding: const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 14, 90, 153),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 5.0),
                  const Icon(
                    Icons.contact_mail_rounded,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  const SizedBox(width: 5.0),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Contacts',
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
