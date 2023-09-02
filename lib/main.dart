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
          title: const Text('I AM DEVELOPER'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 71, 143),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SOME OF THE TECHNOLOGIES I USE:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/imagens/developer.jpg'),
                  width: 340,
                  height: 300,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/imagens/java.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/spring.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/cshap.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/dotnet.png'), width: 70,),
                Image(image: AssetImage('assets/imagens/python.png'), width: 70,),
              ],
            ),
            Row(
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