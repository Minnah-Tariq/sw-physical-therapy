import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA6KBdiK8b1c3OKErKua4FOvjsDGDv062E",
            authDomain: "physical-therapy-clinic-app.firebaseapp.com",
            projectId: "physical-therapy-clinic-app",
            storageBucket: "physical-therapy-clinic-app.appspot.com",
            messagingSenderId: "881039320235",
            appId: "1:881039320235:web:a7f4fbf4dfeab6d5f9c3ee",
            measurementId: "G-W618K4WVEJ"));
  } else {
    await Firebase.initializeApp();
  }
}
