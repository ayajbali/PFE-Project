import 'dart:js';

import 'package:daar_dlmaaref/Home_Screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

Client client = Client()

    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('65e1b9633bdce8d945d2')
    .setSelfSigned(status: true);

Account account = new Account(client);

Future<void> createUser(BuildContext context, String name, String email, String password) async {
  try {
    await account.create(userId: ID.unique(), name: name, email: email, password: password);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  } on AppwriteException catch (e) {
    print(e.message.toString());
    // Handle error as needed
  }
}

Future<void> loginUser(BuildContext context, String email, String password) async {
  try {
    await account.createEmailSession(email: email, password: password);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  } on AppwriteException catch (e) {
    print(e.message.toString());
    // Handle error as needed
  }
}
