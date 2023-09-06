import 'package:flutter/material.dart';
import 'package:i_am_developer/home_screen.dart';

void main() => runApp(const IAmDeveloper());

class IAmDeveloper extends StatelessWidget{
  const IAmDeveloper({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'I Am Developer',
      initialRoute: '/home',
      routes: {
        '/': (context) => const IAmDeveloperPage(),
        '/home': (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 2, 70, 102))
      ),
    );
  }
}

class IAmDeveloperPage extends StatefulWidget{
  const IAmDeveloperPage({super.key});

  @override
  State<IAmDeveloperPage> createState() => _IAmDeveloperState();
}

class _IAmDeveloperState extends State<IAmDeveloperPage>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
              margin: const EdgeInsets.only(left: 10.0, top: 10.0),
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
                      fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 110.0,
                ),
                Text('Back-End Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lora'),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
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
            const SizedBox(
              height: 15.0,
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
            ),
            Container(
              margin: const EdgeInsets.only(left: 25.0, top: 55.0),
              child: const Row(
                children: [
                  Text('Contact:',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              child: const Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 25.0,
                    color:Color.fromARGB(255, 2, 70, 102),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('+55 98 98606-4174',
                    style: TextStyle(
                      color:Color.fromARGB(255, 2, 70, 102),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: const Row(
                children: [
                  Icon(Icons.email,
                    size: 25.0,
                    color:Color.fromARGB(255, 2, 70, 102),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('contatokaykybarbosa@gmail.com',
                    style: TextStyle(
                      color:Color.fromARGB(255, 2, 70, 102),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },
              child: const Text('Go to the Home'),),
          ],
        ),
      );
  }
}