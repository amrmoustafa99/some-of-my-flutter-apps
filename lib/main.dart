import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/layout/NewsApi_btnb/NewsApp_Layout.dart';
import 'package:untitled2/layout/ToDoAPP_btnb/ToDoApp_layout.dart';
import 'package:untitled2/models/News/DioHelper.dart';
import 'package:untitled2/modules/CounterScreen/CounterScreen.dart';
import 'package:untitled2/modules/Login/LoginScreen.dart';
import 'package:untitled2/modules/Sharedreferences/SharedPrefe.dart';
import 'package:untitled2/modules/ViewData/LoginPage.dart';
import 'package:untitled2/modules/ViewData/NavBar.dart';
import 'package:untitled2/shared/components/StanderdNavigationBar.dart';
import 'package:untitled2/shared/network/Local/cashHelper.dart';

import 'modules/Messanger1/MessangerScreen.dart';
import 'modules/Messanger2/MessangerScreen2.dart';
import 'modules/ShopScreen/ShopScreen.dart';
import 'modules/ViewData/DashboarPage.dart';
import 'modules/ViewData/ForTest.dart';
import 'modules/ViewData/LoginZabbix.dart';
import 'modules/ViewData/NavBar2.dart';
import 'modules/ViewData/ViewData.dart';
import 'modules/ViewData/ViewData2.dart';
import 'modules/bmiCalc/BIMCalc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  await CashHelper.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme:ThemeData(
      //   primarySwatch: Colors.deepOrange,
      //   scaffoldBackgroundColor:Colors.white,
      //   appBarTheme:AppBarTheme(
      //     backgroundColor: Colors.white,
      //     elevation: 0,
      //     titleTextStyle: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //       fontSize: 20,
      //
      //
      //     ),
      //
      //     backwardsCompatibility: false,
      //     systemOverlayStyle: SystemUiOverlayStyle(
      //       statusBarColor: Colors.white,
      //       statusBarBrightness: Brightness.dark,
      //     ),
      //      iconTheme: IconThemeData(
      //        color: Colors.black,
      //      )
      //   ),
      //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //     type: BottomNavigationBarType.fixed,
      //       selectedItemColor: Colors.deepOrange,
      //         elevation: 20,
      // ),
      //
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(
      //     backgroundColor: Colors.deepOrange
      //   )
      //
      // ),

      /*  theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.red,
          onPrimary: Colors.black,
          // Colors that are not relevant to AppBar in LIGHT mode:
          primaryVariant: Colors.grey,
          secondary: Colors.grey,
          secondaryVariant: Colors.grey,
          onSecondary: Colors.grey,
          background: Colors.grey,
          onBackground: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
        ),
      )*/
      home: BIMCalc(),
    );
  }
}
