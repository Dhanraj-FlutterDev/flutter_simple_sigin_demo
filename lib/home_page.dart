import 'package:firebase_auth/firebase_auth.dart';import 'package:flutter/material.dart';class HomePage extends StatelessWidget { final FirebaseAuth auth = FirebaseAuth.instance;  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        actions: [          IconButton(              icon: Icon(Icons.logout),              onPressed: ()async{                Navigator.pop(context);                await auth.signOut();                print('signed out');              }          )        ],      ),      body: Center(        child: Text('Welcome'),      ),    );  }}