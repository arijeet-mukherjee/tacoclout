// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'l10n/l10n.dart';
import 'src/helpers/constants.dart';
import 'src/helpers/route_util.dart';
import 'src/helpers/themes.dart';
import 'src/providers/providers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  //Remove this method to stop OneSignal Debugging 
  

  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ForgotPasswordProvider()),
        ChangeNotifierProvider(create: (context) => SignInProvider()),
        ChangeNotifierProvider(create: (context) => SignUpProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
      ],
      child: Consumer2<ThemeProvider, LocaleProvider>(
          builder: (ccontext, theme, locale, child) {
        return GetMaterialApp(
          title: 'Tacoclout',
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.rightToLeftWithFade,
          themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          darkTheme: themeDark(context),
          theme: themeLight(context),
          locale: locale.locale,
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.all,
          getPages: allRoutes,
          initialRoute: Routes.splash,
          // home: LanguageScreen(),
        );
      }),
    );
  }
}
