//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserModel {
String? email;
String? uid;
String? username;
DateTime? timestamp;

FirebaseUserModel({required this.email,required this.uid, required this.username, required this.timestamp});

Map toMap(FirebaseUserModel user) {
	var data = Map<String, dynamic>();

	data["uid"] = user.uid;
	data["username"] = user.username;
	data["email"] = user.email;
	data["timestamp"] = user.timestamp;

	return data;
}

FirebaseUserModel.fromMap(Map<String, dynamic> mapData) {
	this.uid = mapData["uid"];
	this.username = mapData["username"];
	this.email = mapData["email"];
}
}
