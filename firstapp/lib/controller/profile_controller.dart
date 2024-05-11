import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/model/user_model.dart';
import 'package:firstapp/utils/local_storage_data.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final LocalStorageData localStorageData = Get.find();
  File? selectedImagee;
  final imagePicker = ImagePicker();
late UserModel _userModel = UserModel('', '', '', '', '');

  UserModel get userModel => _userModel;

  @override
  void onInit() {
    super.onInit();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final userModelFromStorage = await localStorageData.getUser;
    if (userModelFromStorage != null) {
      _userModel = userModelFromStorage;
    } else {
      // Handle the case where user data is not available in storage
      // For example, initialize _userModel with default values or handle it accordingly
    }
    update();
  }

  Future<void> signOut() async {
    GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
    localStorageData.deleteUser();
  }

  Future uploadProfileImg() async {
    final returnedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    selectedImagee = File(returnedImage!.path);

    update();
  }

  Future<UserModel> getUserModel() async {
    return _userModel;
  }
}