import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreContract{

  final CollectionReference _contractRef = FirebaseFirestore.instance.collection('contract');

  static var instance;

Future<List<QueryDocumentSnapshot>> getcontract()async{
  var value = await _contractRef.get();
  return value.docs;
}
}
