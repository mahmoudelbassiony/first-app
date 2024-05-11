import 'package:cloud_firestore/cloud_firestore.dart';

class SavedFireStoreContract{

  final _contractCollectionRef = FirebaseFirestore.instance.collectionGroup('contract savings');
  
Future<List<QueryDocumentSnapshot>> getContract()async{
  var value = await _contractCollectionRef.get();
  return value.docs;
}
}