
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:hulla/screens/models/user.dart';




class UserManager extends ChangeNotifier {



  final FirebaseAuth auth = FirebaseAuth.instance;

  final Firestore firestore  = Firestore.instance;

  User user;

  bool _loading = false;

  bool get loading  => _loading;

  set loading(bool value){
    _loading = value;
    notifyListeners();
  }



  bool get isLoggedIn => user != null;


  }