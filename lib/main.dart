import 'package:flutter/material.dart';

void main() => runApp(const IAmDeveloper());

class IAmDeveloper extends StatelessWidget {
  const IAmDeveloper({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 70, 102),
        appBar: AppBar(
          title: const Text('I AM DEVELOPER',
            style: TextStyle(
              fontFamily: 'Lora',
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 71, 143),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 25.0),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/my_face/kayky.jpg'),
                    radius: 35.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Kayky Barbosa',
                    style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),)
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SOME OF THE TECHNOLOGIES I USE:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Lora',
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/imagens/developer.jpg'),
                  width: 300,
                  height: 260,)
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/imagens/java.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/spring.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/cshap.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/dotnet.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/python.png'), width: 70,),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/imagens/dart.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/flutter.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/html.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/css.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/docker.png'), width: 70,),
              ],
            )
          ],
        ),
      ),
    );
  }
}