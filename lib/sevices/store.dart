import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quot_app/const.dart';

class Store {
  FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getQuotes() {
    return firebaseFireStore.collection(kQuotesCollection).snapshots();
  }
}
