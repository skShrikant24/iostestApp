import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCBbxO0ZmGaAJOnFzbuIAM07ilfWkbhZYI",
            authDomain: "disha-elearning.firebaseapp.com",
            projectId: "disha-elearning",
            storageBucket: "disha-elearning.appspot.com",
            messagingSenderId: "171697159316",
            appId: "1:171697159316:web:7d4d9b8bf55beba3f1c881",
            measurementId: "G-6SZCZB6PWY"));
  } else {
    await Firebase.initializeApp();
  }
}
