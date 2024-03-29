import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';
import 'package:pay_flow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:pay_flow/modules/home/home_page.dart';
import 'package:pay_flow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:pay_flow/modules/splash/splash_page.dart';
import 'package:pay_flow/shared/models/user_model.dart';
import 'shared/themes/app_colors.dart';
import 'modules/login/login_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => HomePage(
              user: ModalRoute.of(context)!.settings.arguments as UserModel,
            ),
        "/login": (context) => const LoginPage(),
        "/barcode_scanner": (context) => const BarcodeScannerPage(),
        "/insert_boleto": (context) => const InsertBoeltoPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
