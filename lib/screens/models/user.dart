import 'package:cloud_firestore/cloud_firestore.dart';


class User{

  User({ this.email, this.password, this.id});

  User.fromDocument(DocumentSnapshot document){
    id = document.documentID;

    email = document.data['email'] as String;

    }



  String id;

  String email;

  String password;

  String confirmPassword;

}