import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ElectroKartFirebaseUser {
  ElectroKartFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ElectroKartFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ElectroKartFirebaseUser> electroKartFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ElectroKartFirebaseUser>(
      (user) {
        currentUser = ElectroKartFirebaseUser(user);
        return currentUser!;
      },
    );
