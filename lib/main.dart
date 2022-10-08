import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes/presentation/core/app_widget.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // configureDependencies(); // dependency injections
  runApp(
      EasyLocalization(
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('cs', 'CZ')
          ],
          fallbackLocale: const Locale('cs', 'CZ'),
          path: 'assets/lang',
          child: AppWidget()
      )
  );
}