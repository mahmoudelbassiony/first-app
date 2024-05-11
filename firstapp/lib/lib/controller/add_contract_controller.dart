import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class AddContractController extends GetxController{

  String? sellerName , sellerIdNumber, TheSellerPlaceOfResidence ,sellerIdDate, buyerName , buyerIdNumber, TheBuyerPlaceOfResidence, buyerIdDate,  propertyLocation, OwnershipOfTheProperty,howToGetTheProperty;
CollectionReference contract = FirebaseFirestore.instance.collection('contract');

  Future<void> addcontract() {
      return contract
          .add({
'اسم البائع': String,
' رقم بطاقه البائع ': String,
' مكان إقامه البائع ': String,
'تاريخ إصدار بطاقه البائع': DateTime,
               

'اسم المشتري':String,
'رقم بطاقة المشتري ': String,
'مكان إقامه المشتري ':String,
'تاريخ إصدار بطاقة المشتري':DateTime,
               
'عنوان العقار':String,
'ملكية الشقة':String,
'طريقة الحصول على الملكية':String,
  
          })
          .then((value) => print("contract Added"))
          .catchError((error) => print("Failed to add contract: $error"));
    }


}