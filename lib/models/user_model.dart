import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String uid;
  String email;
  String image;
  String name;
  Timestamp date;

  UserModel({
    required this.uid,
    required this.email,
    required this.image,
    required this.name,
    required this.date,
  });

  factory UserModel.fromJson(DocumentSnapshot snapshot) {
    return UserModel(
      uid: snapshot['uid'],
      email: snapshot['email'],
      image: snapshot['image'],
      name: snapshot['name'],
      date: snapshot['date'],
    );
  }
}
