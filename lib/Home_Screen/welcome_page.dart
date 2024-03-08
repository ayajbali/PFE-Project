// welcome_page.dart

import 'package:daar_dlmaaref/Home_Screen/LoginPage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xfff5f5f8),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4, // Adjust the height as needed
                child: Image.asset(
                  "images/logo.png",
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              ),
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Welcome to Daar El maaref. Here you can find all the books you want.',
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Description Text

              // Button
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 20,
                    shadowColor: Colors.black,
                    primary: Colors.blue,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Get started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
