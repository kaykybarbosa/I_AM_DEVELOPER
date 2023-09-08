import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 2,60, 102),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 14, 90, 153),
          title: const Text('Skills'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50.0),
            Container(
              alignment: Alignment.bottomCenter,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              width: double.infinity,
              child: const Text(
                'Some of the technologies i use:',
                style: TextStyle(
                    fontSize: 21.0,
                    fontFamily: 'Lora',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              thickness: 3.0,
              color: Colors.white,
              indent: 30.0,
              endIndent: 30.0,
            ),
            const SizedBox(height: 30.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage('assets/imagens/java.png'), width: 60),
                Image(
                    image: AssetImage('assets/imagens/spring.png'), width:60),
                Image(image: AssetImage('assets/imagens/cshap.png'), width:60),
                Image(image: AssetImage('assets/imagens/dotnet.png'), width:60)
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage('assets/imagens/git.png'), width: 60),
                Image(
                    image: AssetImage('assets/imagens/python.png'), width: 60),
                Image(image: AssetImage('assets/imagens/docker.png'), width: 60),
                Image(image: AssetImage('assets/imagens/aspnet.png'), width: 60)
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage('assets/imagens/dart.png'), width:60),
                Image(
                    image: AssetImage('assets/imagens/flutter.png'), width:60),
                Image(image: AssetImage('assets/imagens/html.png'), width:60),
                Image(image: AssetImage('assets/imagens/css.png'), width:60)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
