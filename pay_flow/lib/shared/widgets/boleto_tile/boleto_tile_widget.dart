import 'package:animated_card/animated_card.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pay_flow/shared/models/boleto_model.dart';

import '../../themes/app_text_styles.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: AnimatedCard(
        direction: AnimatedCardDirection.right,
        duration: const Duration(seconds: 1),
        child: Text(
          data.name!,
          style: TextStyles.titleListTile,
        ),
      ),
      subtitle: AnimatedCard(
        direction: AnimatedCardDirection.right,
        duration: const Duration(seconds: 1),
        child: AnimatedCard(
          direction: AnimatedCardDirection.left,
          duration: Duration(seconds: 1),
          child: Text(
            "Vence em ${data.dueDate}",
            style: TextStyles.captionBody,
          ),
        ),
      ),
      trailing: Text.rich(TextSpan(
        text: "R\$ ",
        style: TextStyles.trailingRegular,
        children: [
          TextSpan(
            text: "${data.value!.toStringAsFixed(2)}",
            style: TextStyles.trailingBold,
          ),
        ],
      )),
    );
  }
}
