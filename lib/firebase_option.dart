import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  // Opsi Firebase untuk semua platform
  static const FirebaseOptions _options = FirebaseOptions(
    apiKey: 'AIzaSyCCTUlPwQAUI_KsGzBY10Eio1xQ3tZZasQ',
    appId: '1:873420928585:android:76090b88f041edd2c73198',
    messagingSenderId: '873420928585',
    projectId: 'pertemuan6-1a17f',
    storageBucket: 'pertemuan6-1a17f.firebasestorage.app',
  );

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return _options;

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return _options;
      default:
        return _options;
    }
  }
}