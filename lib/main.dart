import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/get_initiliaze.dart';
import 'screens/home_page.dart';
import 'ui/helper/localization_langs/langs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initialize Services Bindings
  await InitializeWidgets().dependencies();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ],
  ).then(
    (_) async {
      runApp(GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData(fontFamily: 'Poppins'),
        translations: MyTranslations(),
        //Change app language based on device language
        //locale: Get.deviceLocale,
        locale: const Locale('en', 'US'),
        //If added language not equal to based device language change to fallback language
        fallbackLocale: const Locale('en', 'US'),
      ));
    },
  );
}
