import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDoDR_CEUpZRRQ_cBozPiri5ApltZo26Fo",
            authDomain: "electrokart-270ff.firebaseapp.com",
            projectId: "electrokart-270ff",
            storageBucket: "electrokart-270ff.appspot.com",
            messagingSenderId: "1030773986452",
            appId: "1:1030773986452:web:a449de82760ea86dc45081",
            measurementId: "G-2BGKKTW80R"));
  } else {
    await Firebase.initializeApp();
  }
}
