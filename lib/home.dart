import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 49, 69),
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 241, 230, 200)
          ),
          ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 25, 49, 69),
      body: Center(  
        child: Text(
          "Welcome to\nHome page",
          style: TextStyle(
            fontSize: 35,
            fontWeight:FontWeight.bold,
            color: const Color.fromARGB(255, 241, 230, 200),
          ),
          ),
      ),
    );
}
}