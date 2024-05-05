import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:company/model/property_model.dart';
import 'package:company/services/firestore_properties.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GetPropertyController extends GetxController{

  ValueNotifier<bool> get loading => _loading;

  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<PropertyModel> get propertyModel => _propertyModel;

  List<PropertyModel> _propertyModel = [];

  getProperties() async{
    _loading.value = true;
    FireStoreProperty().getPropertiess().then((value){
      for(int i = 0; i < value.length; i++){
        _propertyModel.add(PropertyModel.fromJson(value[i].data() as Map));
        _loading.value = false;
      }
      update();
    });
    }

    GetPropertyController(){
      getProperties();
    }

    String? id, locationn, area, type, paymentType, amenty, noOfRooms, noOfBaths, price, downPayment, installmentValue, description, brokerPhone, brokerEmail;
CollectionReference properties = FirebaseFirestore.instance.collection('Properties');

  Future<void> addProperty() {
      return properties
          .add({
            'Location': locationn, 
            'area': area, 
            'type': type ,
            'price': price,
            'number of rooms':noOfRooms,
            'number of baths': noOfBaths,
            'Amenties': amenty,
            'payment type': paymentType,
            'down payment': downPayment,
            'installment value': installmentValue,
            'description': description,
            'broker phone': brokerPhone,
            'broker email': brokerEmail
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }


}