import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'Toastmsg.dart';

class Imagescreen extends StatefulWidget {
  const Imagescreen({super.key});

  @override
  State<Imagescreen> createState() => _ImagescreenState();
}

class _ImagescreenState extends State<Imagescreen> {
  File? image;
  final Imagepicker = ImagePicker();

  DatabaseReference dref = FirebaseDatabase.instance.ref("images");

  final storageRef =
      FirebaseStorage.instance.ref("ImageFolder"); //main folder in db
  final key = FirebaseAuth.instance.currentUser!.uid;
  int id = 0;

  Future getimgfromgallery() async {
    final pickedFile = await Imagepicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);

    setState(() {});
    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      Toastmsg().toast("No image selected !");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image == null ? Text("No image here") : Image.file(image!.absolute),
          ElevatedButton(
              onPressed: () {
                getimgfromgallery();
              },
              child: Text('Select Image')),
          ElevatedButton(
              onPressed: () async {
                id++;
                final refimg = await storageRef.child("img").child("$key/$id");
                UploadTask uploadTask = refimg.putFile(image!.absolute);

                Future.value(uploadTask).then((value) async {
                  final downloadurl =
                      await refimg.getDownloadURL(); //URL OPTION

                  dref
                      .child(key)
                      .child("$id")
                      .set({"Id": id, "imageurl": downloadurl}).then((value) {
                    Toastmsg().toast("image uploaded in database");
                  }).onError((error, stackTrace) {
                    Toastmsg().toast(error.toString());
                  });
                  // Toastmsg().toast("Image Uploaded");
                  // }).onError((error, stackTrace) {
                  //   Toastmsg().toast(error.toString());
                });
              },
              child: Text('Upload Image')),
        ],
      ),
    );
  }
}
