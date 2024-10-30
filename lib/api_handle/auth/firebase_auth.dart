import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?>signUpWithEmailPassword( String email,String password)async{
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    }
        catch(e){
        print("Some error ============");
        }
    return null;
  }
}