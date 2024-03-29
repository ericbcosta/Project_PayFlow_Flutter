import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';
import 'package:pay_flow/shared/themes/app_images.dart';

import '../../themes/app_text_styles.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secundary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logomini,
              color: AppColors.background,
              width: 56,
              height: 34,
            ),
            Container(
              height: 32,
              width: 1,
              color: AppColors.background,
            ),
            Text.rich(TextSpan(
              text: "Você tem ",
              style: TextStyles.captionBackground,
              children: [
                TextSpan(
                  text: "$size boletos\n",
                  style: TextStyles.captionBoldBackground,
                ),
                TextSpan(
                  text: "cadastrados para pagar",
                  style: TextStyles.captionBackground,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
