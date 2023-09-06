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
      appBar: AppBar(
        title: const Text('Welcome to my App'),
      ),
      body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Colors.red,
                    ),
                    foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black),
                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0))
                  ),
                  child: const Text('Profile'),
                ),
              ],
            )
          ],
      ),
    );
  }
}