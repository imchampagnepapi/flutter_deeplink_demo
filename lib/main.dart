import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deeplink_demo/src/service/dynamic_link_service.dart';
import 'package:flutter_deeplink_demo/src/view/app_view.dart';

import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  /// Init Firebase App
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const AppView());
}
