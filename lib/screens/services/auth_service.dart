import 'package:firebase_auth/firebase_auth.dart';
import 'package:taskly/screens/widgets/toast.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      dynamic user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } catch (e) {
      Toast.errorToast(e.toString());
    }
    return false;
  }
}
