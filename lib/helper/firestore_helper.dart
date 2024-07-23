import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../modal/user_modal.dart';
import 'auth_helper.dart';

class FirestoreHelper {
  FirestoreHelper._();
  static final FirestoreHelper instance = FirestoreHelper._();

  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  String userCollection = "allUser";

  late UserModal currentUser;

  Future<void> addUser({required User user}) async {
    Map<String, dynamic> data = {
      'uid': user.uid,
      'displayName': user.displayName ?? "NULL User",
      'email': user.email ?? "NULL_mail",
      'phoneNumber': user.phoneNumber ?? "NULL_phone",
      'photourl': user.photoURL ??
          "https://i0.wp.com/rssoeroto.ngawikab.go.id/wp-content/uploads/2022/07/user-dummy-removebg.png?ssl=1",
    };
    await fireStore.collection(userCollection).doc(user.uid).set(data);
  }

  Future<void> getUser() async {
    DocumentSnapshot snapshot = await fireStore
        .collection(userCollection)
        .doc(AuthHelper.instance.auth.currentUser!.uid)
        .get();

    currentUser = UserModal.froMap(snapshot.data() as Map);
  }
}
