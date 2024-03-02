

 import 'package:app2/firebase/storage.dart';
import 'package:app2/models/add_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:uuid/uuid.dart';

class FirestoreMethods {





  //______________________________________________________________________________
  // uploadAdd(
  //     {
  //       required titleControllerr,
  //       required NameCollection,
  //       // required priceControllerr,
  //       // required locationControllerr,
  //       required describeControllerr,
  //       // required imgName,
  //       // required imgPath,
  //        }) async
  // {
  //   // String urlll = await getImgURL(imgName: imgName,
  //   //     imgPath: imgPath,
  //   //     folderName: 'imgPosts/${FirebaseAuth.instance.currentUser!.uid}');
  //
  //
  //
  //   CollectionReference carss =
  //   FirebaseFirestore.instance.collection("${NameCollection}");
  //   /////////////
  //   String newID = const Uuid().v1();
  //
  //
  //   CarDate carw = CarDate(
  //     // imgCar: urlll,
  //     CarId: newID,
  //     // uid: FirebaseAuth.instance.currentUser!.uid,
  //     Title: titleControllerr,
  //     // price: priceControllerr,
  //     // location: locationControllerr,
  //     describ: describeControllerr,
  //   );
  //
  //
  //   carss
  //       .doc( ////////
  //     newID,
  //   )
  //       .set(carw.convert2Map())
  //       .then((value) => print("done................"))
  //       .catchError((error) => print("Failed to post: $error"));
  // }


  //_____________________________________________________________________________




  MyAdds(
      {required titleControllerr,
        required NameCollection,

         required describeControllerr,
        // required imgName,
        // required imgPath,
      }) async
  {
    // String urlll = await getImgURL(imgName: imgName,
    //     imgPath: imgPath,
    //     folderName: 'imgsss');


    CollectionReference carss =
    FirebaseFirestore.instance.collection("dataSSS");
    /////////////
    String newID = const Uuid().v1();


    CarDate carw = CarDate(
      // imgCar: urlll,
      CarId: newID,
      // uid: FirebaseAuth.instance.currentUser!.uid,
      Title: titleControllerr,
      // price: priceControllerr,
      // location: locationControllerr,
      describ: describeControllerr,
    );


    carss
        .doc( ////////
      newID,
    )
        .set(carw.convert2Map())
        .then((value) => print("done................"))
        .catchError((error) => print("Failed to post: $error"));
  }






    addimgs(
        {
          required NameCollection,
          required imgName,
          required imgPath,
        }) async
    {
      String urlll = await getImgURL(imgName: imgName,
          imgPath: imgPath,
          folderName: 'imgsss');



      CollectionReference carss =
      FirebaseFirestore.instance.collection("imgSSS") ;
      /////////////
      String newID = const Uuid().v1();


      Carimg carw = Carimg(
        imgCar: urlll,
        CarId: newID,
        // uid: FirebaseAuth.instance.currentUser!.uid,
        // Title: titleControllerr,
        // price: priceControllerr,
        // location: locationControllerr,
        // describ: describeControllerr,
      );


      carss
          .doc( ////////
        newID,
      )
          .set(carw.convert2Map())
          .then((value) => print("done................"))
          .catchError((error) => print("Failed to post: $error"));




    }

















}