import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mayfay_hackaton/model/user_model.dart';

class UserService {
  final CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'noHandphone': user.noHandphone,
        'uang': user.uang,
        'status': user.status,
      });
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        name: snapshot['name'],
        noHandphone: snapshot['noHandphone'],
        uang: snapshot['uang'],
        status: snapshot['status'],
      );
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
