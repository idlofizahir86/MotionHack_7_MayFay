import 'package:firebase_auth/firebase_auth.dart';
import 'package:mayfay_hackaton/model/user_model.dart';
import 'package:mayfay_hackaton/services/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
    
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    required String noHandphone,
    String status = 'User Free',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        noHandphone: noHandphone,
        uang: 0,
        status: status,
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
