class FirebaseUser {
  final String? uid ;
  final String? code;
  FirebaseUser({this.uid,this.code});
}

class LoginUser {
  final String? email;
  final String? password;

  LoginUser({this.email, this.password});
}