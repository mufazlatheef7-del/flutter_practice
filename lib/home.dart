import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 49, 69),
        leading:IconButton(onPressed: (){

          },
          icon: Icon(
            Icons.home,
            color: const Color.fromARGB(255, 241, 230, 200),
          ),
          ),
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
      body:ListView(
        children: [
          Card(
            color: const Color.fromARGB(255, 241, 230, 200),
             child: InkWell(
              onTap: () {
              },
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text("jhelum",
              style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w300
              ),
              ),
              subtitle: Text("faheem abdullah"),
            ),
          ),
          ),
            Card(
              
            color: const Color.fromARGB(255, 241, 230, 200),
            child: InkWell(
              onTap: () {
              },
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Inaam",
              style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w300
             
              ),),
              subtitle: Text("Anuv Jain"),
            ),
          ),
            ),
            Card(
            color: const Color.fromARGB(255, 241, 230, 200),
            child: InkWell(
              onTap: () {
              },
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Phir Na Aana",
              style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w300
              ),),
              subtitle: Text("Ashwani Guptha"),
            ),
          )
            ),
                Card(
            color: const Color.fromARGB(255, 241, 230, 200),
            child: InkWell(
              onTap: () {
              },
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Magale",
              style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w300
              ),),
              subtitle: Text("Sai abhyankkar"),
            ),
          )
            ),
                    Card(
            color: const Color.fromARGB(255, 241, 230, 200),
            child: InkWell(
              onTap: () {
              },
            child: ListTile(
              leading: Icon(Icons.music_note),
              title: Text("indrajaalam",
              style: TextStyle(
             fontSize: 22,
             fontWeight: FontWeight.w300
              ),),
              subtitle: Text("vishnu vijay"),
            ),
          )
            ),
        ],
      )
    );
}
}