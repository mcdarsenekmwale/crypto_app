
import 'package:crypto_app/routes/app_pages.dart';
import 'package:crypto_app/utils/theme_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
  ).then((_) async{
    await initServices();
    runApp(const MainApp());
  }
  );
}

Future initServices() async {
  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  WidgetsFlutterBinding.ensureInitialized();
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      //key: Get.key,
      title: 'Crypto ',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.themeData,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}






