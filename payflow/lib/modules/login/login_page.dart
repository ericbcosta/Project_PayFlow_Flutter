import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(children: [
          Container(
            width: size.width,
            height: size.height * 0.36,
            color: AppColors.primary,
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 127,
            child: Image.asset(
              AppImages.takeMyMoney,
              width: 208,
              height: 373,
            ),
          ),
          Positioned(
            bottom: size.height * 0.11,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.logomini),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                  child: Text(
                    "Organize seus boletos em um só lugar",
                    textAlign: TextAlign.center,
                    style: TextStyles.titleHome,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40, top: 40),
                  child: SocialLoginButton(
                    onTap: (() {}),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
