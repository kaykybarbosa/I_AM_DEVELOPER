import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 70, 102),
      appBar: AppBar(
        title: const Center(
          child: Text('I AM DEVELOPER'),
        ),
      ),
      body: Column(
          children: [
            const SizedBox(height: 15.0,),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: const EdgeInsets.all(10.0),
              child: const Text('Welcome in my App!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 55.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              child: Row(
                children: [
                  const SizedBox(width: 10.0),
                  const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  const SizedBox(width: 5.0),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                    ),
                    onPressed: () {}, 
                    child: const Text('Profile',
                      style: TextStyle(
                        fontSize: 20.0
                      ),)
                  ),
                ]),
            )
          ],
      ),
    );
  }
}