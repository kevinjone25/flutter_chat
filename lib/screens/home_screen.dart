import 'package:flutter/material.dart';
import 'package:myapp/models/user_model.dart';
import 'package:myapp/screens/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  UserModel user;
  HomeScreen(this.user, {Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
                    (route) => false);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
      ),
    );
  }
}
