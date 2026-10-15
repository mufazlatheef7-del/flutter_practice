import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 49, 69),
        title: Text(
          "Login",
          style: TextStyle(
            color: const Color.fromARGB(255, 241, 230, 200),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 247, 242, 231),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
          color: const Color.fromARGB(255, 21, 51, 75),
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: const Color.fromARGB(255, 241, 230, 200),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: const Color.fromARGB(241, 254, 244, 235),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: const Color.fromARGB(241, 254, 244, 235),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    if (usernameController.text == "mufaz" &&
                        passwordController.text == "1234") {

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Login Successful!",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          ),
                          backgroundColor: const Color.fromARGB(255, 249, 251, 249),
                          duration: Duration(seconds: 2),
                        ),
                      );

                      Future.delayed(Duration(seconds: 2), () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        ); 
                      });

                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Login Failed"),
                            content: Text(
                              "Incorrect username or password",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Align(
                alignment: AlignmentGeometry.bottomLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(
                      color: const Color.fromARGB(241, 254, 244, 235),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

