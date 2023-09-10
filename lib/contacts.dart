import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

// kaykykbuloso@123
var _emailUri = Uri(scheme: 'mailto', path: 'contatokaykybarbosa@gmail.com');
var _linkedinUri = Uri(
    scheme: 'https',
    path: 'www.linkedin.com/in/kayky-bruno-silva-barbosa-20766b237');

class _ContactsState extends State<Contacts> {
  Future<void> _linksUri(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Unable to open Email');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 241, 241),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 215, 215, 215),
          title: const Text(
            'Contacts',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30.0),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ElevatedButton(
                onPressed: () => _linksUri(_emailUri),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 5.0),
                    Image(
                      image: AssetImage('assets/icons/gmail.png'),
                      width: 30.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Contatokaykybarbosa@gmail.com',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: const EdgeInsets.all(10.0),
                  backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                ),
                onPressed: () => _linksUri(_linkedinUri),
                child: const Row(
                  children: [
                    SizedBox(width: 5.0),
                    Image(
                      image: AssetImage('assets/icons/linkedin.png'),
                      width: 30.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Kayky Barbosa',
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black,
                      ),
                    )
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
