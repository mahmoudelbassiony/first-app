// add_contract_data.dart

import 'package:firstapp/lib/model/Contract_model.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/lib/services/firestore_contract.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddContractData with ChangeNotifier {
  final _database = FireStoreContract.instance.reference();
  final _contractData = ContractModel();

  ContractModel get contractData => _contractData;

  void updateContractData({
    required String sellerName,
    required String sellerIdNumber,
    required String  TheSellerPlaceOfResidence,
    required String sellerIdDate,
    required String buyerName,
    required String buyerIdNumber,
    required String TheBuyerPlaceOfResidence,
    required String buyerIdDate,
    required String propertyLocation,
    required String OwnershipOfTheProperty,
    required String howToGetTheProperty,
  }) {
    _contractData.sellerName = sellerName;
    _contractData.sellerIdNumber = sellerIdNumber;
    _contractData.TheSellerPlaceOfResidence = TheSellerPlaceOfResidence;
    _contractData.sellerIdDate = sellerIdDate;
    _contractData.buyerName = buyerName;
    _contractData.buyerIdNumber = buyerIdNumber;
    _contractData.TheBuyerPlaceOfResidence = TheBuyerPlaceOfResidence;
    _contractData.buyerIdDate = buyerIdDate;
    _contractData.propertyLocation = propertyLocation;
    _contractData.OwnershipOfTheProperty = OwnershipOfTheProperty;
    _contractData. howToGetTheProperty =  howToGetTheProperty;
            

    notifyListeners();
  }

  void clearContractData() {
    _contractData.sellerName = 'اسم البائع ';
    _contractData.sellerIdNumber = ' رقم بطاقه البائع ';
    _contractData.TheSellerPlaceOfResidence = 'مكان إقامه البائع ';
    _contractData.sellerIdDate = 'تاريخ إصدار بطاقه البائع ';
    _contractData.buyerName = 'اسم المشتري ';
    _contractData.buyerIdNumber = 'رقم بطاقة المشتري ';
    _contractData.TheBuyerPlaceOfResidence = 'مكان إقامه المشتري';
    _contractData.buyerIdDate = 'تاريخ إصدار بطاقة المشتري ';
    _contractData.propertyLocation = 'عنوان العقار';
    _contractData.OwnershipOfTheProperty = 'ملكيه العقار';
    _contractData.howToGetTheProperty ='طريقه الحصول على الملكيه ';

    notifyListeners();
  }
}