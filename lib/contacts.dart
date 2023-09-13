import 'package:flutter/material.dart';
import 'package:i_am_developer/buttons/btn_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

var _emailUri = Uri(scheme: 'mailto', path: 'contatokaykybarbosa@gmail.com');
var _linkedinUri =
    Uri(scheme: 'https', path: 'www.linkedin.com/in/kayky-barbosa');

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
            const SizedBox(height: 50.0),
            BtnContacts(
              onPressed: _linksUri,
              linkContact: _emailUri,
              title: 'Contatokaykybarbosa@gmail.com',
              assetImage: const AssetImage('assets/icons/gmail.png'),
            ),
            BtnContacts(
              onPressed: _linksUri,
              linkContact: _linkedinUri,
              title: 'Kayky Barbosa',
              assetImage: const AssetImage('assets/icons/linkedin.png'),
              fontSize: 18.0,
            )
          ],
        ),
      ),
    );
  }
}