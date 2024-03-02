import 'package:cloud_firestore/cloud_firestore.dart';

class CarDate {
   final String Title;
   // final String price;
   // final String location;
   final String describ;
   // final String imgCar;
  // final String uid;
  final String CarId;

  CarDate(
      {
        required this.Title,
         // required this.imgCar,
        // required this.uid,
        required this.CarId,
        // required this.price,
        // required this.location,
        required this.describ,
         });

// To convert the UserData(Data type) to   Map<String, Object>
  Map<String, dynamic> convert2Map() {
    return {
       "Title": Title,
       // "imgCar": imgCar,
      // "uid": uid,
      "CarId": CarId,
      // "price": price,
      // "location": location,
      "deeee": describ,

    };
  }

  // function that convert "DocumentSnapshot" to a User
// function that takes "DocumentSnapshot" and return a User

  static convertSnap2Model(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return CarDate(
      Title: snapshot["Title"],
      // imgCar: snapshot["imgCar"],
      // uid: snapshot["uid"],
      CarId: snapshot["CarId"],
      // price: snapshot["price"],
      // location: snapshot["location"],
      describ: snapshot["describ"],

    );
  }
}







/////////////////////////////////////////////





class Carimg {
  // final String Title;
  // final String price;
  // final String location;
  // final String describ;
  final String imgCar;
  // final String uid;
  final String CarId;

  Carimg(
      {
        // required this.Title,
        required this.imgCar,
        // required this.uid,
        required this.CarId,
        // required this.price,
        // required this.location,
        // required this.describ,
      });

// To convert the UserData(Data type) to   Map<String, Object>
  Map<String, dynamic> convert2Map() {
    return {
      // "Title": Title,
      "imgCar": imgCar,
      // "uid": uid,
      "CarId": CarId,
      // "price": price,
      // "location": location,
      // "deeee": describ,

    };
  }

  // function that convert "DocumentSnapshot" to a User
// function that takes "DocumentSnapshot" and return a User

  static convertSnap2Model(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Carimg(
      // Title: snapshot["Title"],
      imgCar: snapshot["imgCar"],
      // uid: snapshot["uid"],
      CarId: snapshot["CarId"],
      // price: snapshot["price"],
      // location: snapshot["location"],
      // describ: snapshot["describ"],

    );
  }
}


















