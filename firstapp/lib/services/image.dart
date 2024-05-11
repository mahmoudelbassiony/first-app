import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<String> uploadImageToFirebase(String imagePath) async {
  try {
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('images')
        .child('property_images')
        .child('${DateTime.now().millisecondsSinceEpoch}.jpg');
  
    await ref.putFile(File(imagePath));
  
    String imageUrl = await ref.getDownloadURL();
    return imageUrl;
  } catch (e) {
    print('Error uploading image to Firebase: $e');
    return '';
  }
}