import 'package:flutter/material.dart';
import 'package:flutter_app/features/widgets/custom_btn.dart';
import 'package:flutter_app/styles/icons.dart';
import 'package:flutter_app/utils/context_ext.dart';
import 'package:flutter_app/utils/widget_ext.dart';

class TranxBtns extends StatelessWidget {
  const TranxBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4.0,
      children: [
        CustomBtn(
          icon: AppIcons.wallet.toIconLabel(null, 28, 28),
          title: 'Wallet To',
          subtitle: 'Bank A/c',
        ).expanded(),
        CustomBtn(
          icon: Icon(
            Icons.redeem_outlined,
            color: context.colorScheme.primary,
            size: 20,
          ),
          title: 'Explore',
          subtitle: 'Rewards',
        ),
        CustomBtn(
          icon: AppIcons.announcement.toIconLabel(null, 28, 28),
          title: 'Refer & Get',
          subtitle: '200',
        ).expanded(),
      ],
    );
  }
}
