import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDbc9RIgbAd4-fy7L0PuylOeYtcWp3yDY8",
            authDomain: "proyectoswip-8fafc.firebaseapp.com",
            projectId: "proyectoswip-8fafc",
            storageBucket: "proyectoswip-8fafc.appspot.com",
            messagingSenderId: "1065442946709",
            appId: "1:1065442946709:web:0faaea346b98acd6fa759c",
            measurementId: "G-JSFGSVLBWY"));
  } else {
    await Firebase.initializeApp();
  }
}
