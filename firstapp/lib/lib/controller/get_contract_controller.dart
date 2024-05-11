import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstapp/lib/services/firestore_contract.dart';
import 'package:firstapp/lib/model/contract_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart'; 

class GetContractController extends GetxController{

  ValueNotifier<bool> get loading => _loading;

  ValueNotifier<bool> _loading = ValueNotifier(false);

  List<ContractModel> get contractModel => _ContractModel;

  List<ContractModel> _ContractModel = [];

  getcontract() async{
    _loading.value = true;
    FireStoreContract().getcontract().then((value){
      for(int i = 0; i < value.length; i++){
      _ContractModel.add(ContractModel.fromJson(value[i].data() as Map));
        _loading.value = false;
      }
      update();
    });
    }

    GetContractController(){
      getcontract();
    }

    String?sellerName , sellerIdNumber, TheSellerPlaceOfResidence ,sellerIdDate, buyerName , buyerIdNumber, TheBuyerPlaceOfResidence, buyerIdDate,  propertyLocation, OwnershipOfTheProperty,howToGetTheProperty;
CollectionReference contract = FirebaseFirestore.instance.collection('contract');

  Future<void> addProperty() {
      return contract
          .add({
  'اسم البائع': String,
  ' رقم بطاقه البائع ': String,
' مكان إقامه البائع ': String,
'تاريخ إصدار بطاقه البائع': DateTime,
               

'اسم المشتري':String,
'رقم بطاقة المشتري ': String,
' مكان إقامه المشتري ':String,
'تاريخ إصدار بطاقة المشتري':DateTime,
               
'عنوان العقار':String,
'ملكية الشقة':String,
'طريقة الحصول على الملكية':String,
  
            
          })
          .then((value) => print("contract Added"))
          .catchError((error) => print("Failed to add contract: $error"));
    }


}
 