import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firstapp/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../model/user_model.dart';

class AddPropertyController extends GetxController {
  late ProfileController _profileController;
  late UserModel _userModel;
  String? id, locationn, area, type, paymentType, amenty, noOfRooms, noOfBaths, price, downPayment, installmentValue, description;
  List<XFile> imageList = [];
  final imagePicker = ImagePicker();
  CollectionReference properties = FirebaseFirestore.instance.collection('Assessor Properties');

  @override
  void onInit() {
    super.onInit();
    _profileController = Get.find<ProfileController>();
    // Call the initializeUserModel method when the controller is initialized
    initializeUserModel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // Initialize the user model asynchronously
  Future<void> initializeUserModel() async {
    _userModel = await _profileController.getUserModel();
  }

  Future<void> uploadImage() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    imageList.addAll(selectedImages!);
    update();
  }

  Future<void> addProperty() async {
    try {
      await properties.add({
        'Location': locationn,
        'area': area,
        'type': type,
        'price': price,
        'number of rooms': noOfRooms,
        'number of baths': noOfBaths,
        'Amenties': amenty,
        'payment type': paymentType,
        'down payment': downPayment,
        'installment value': installmentValue,
        'description': description,
        'user email': _userModel.email // Access the user email from the initialized UserModel
      });
      print("Property Added Successfully");
    } catch (error) {
      print("Failed to add property: $error");
    }
  }

  File? pickedImageProfile;
  String? imageUrlFromFirebase;

  Future<void> pickImageProfile(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source, imageQuality: 80);
    if (pickedFile != null) {
      pickedImageProfile = File(pickedFile.path);
      await saveImagePickerInFirebase();
    }
  }

  Future<void> saveImagePickerInFirebase() async {
    final user = FirebaseAuth.instance.currentUser!.uid;
    final Reference storageRef = FirebaseStorage.instance.ref().child('user_images').child('$user.jpg');

    await storageRef.putFile(pickedImageProfile!);
    imageUrlFromFirebase = await storageRef.getDownloadURL();
  }
}