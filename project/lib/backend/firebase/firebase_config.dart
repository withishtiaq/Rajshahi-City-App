import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCArPUb1Gj2LjRIjq7i3pzfYU-EjL1nSzY",
            authDomain: "rajshahi-city-apk.firebaseapp.com",
            projectId: "rajshahi-city-apk",
            storageBucket: "rajshahi-city-apk.firebasestorage.app",
            messagingSenderId: "482295282038",
            appId: "1:482295282038:web:49390a5272749bd5d4a257",
            measurementId: "G-XMWQF383GK"));
  } else {
    await Firebase.initializeApp();
  }
}
