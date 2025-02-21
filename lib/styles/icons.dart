import 'package:flutter/material.dart';

class AppIcons {
  static const String _basePath = 'assets/icons';

  static AppIcon get wallet => AppIcon('$_basePath/wallet.png');
  static AppIcon get announcement => AppIcon('$_basePath/announcement.png');
  // Transfer Money
  static AppIcon get checkBalance => AppIcon('$_basePath/check_balance.png');
  static AppIcon get toBankUPI => AppIcon('$_basePath/to_bank_upi.png');
  static AppIcon get toMobileNum => AppIcon('$_basePath/to_mobile_num.png');
  static AppIcon get toSelfAcc => AppIcon('$_basePath/to_self_acc.png');

  //
  static AppIcon get loanRepayment => AppIcon('$_basePath/loan_repayment.png');
  static AppIcon get creditCard => AppIcon('$_basePath/credit_card.png');
  static AppIcon get mobileRecharge =>
      AppIcon('$_basePath/mobile_recharge.png');
  static AppIcon get rent => AppIcon('$_basePath/rent.png');

  //
  static AppIcon get creditScore => AppIcon('$_basePath/credit_score.png');
  static AppIcon get goldLoan => AppIcon('$_basePath/gold_loan.png');
  static AppIcon get mutualFund => AppIcon('$_basePath/mutual_fund.png');
  static AppIcon get carFront => AppIcon('$_basePath/car_front.png');

  //
  static AppIcon get bikeLeft => AppIcon('$_basePath/bike_left.png');
  static AppIcon get carLeft => AppIcon('$_basePath/car_left.png');
  static AppIcon get healthIns => AppIcon('$_basePath/health_ins.png');
  static AppIcon get termLife => AppIcon('$_basePath/term_life.png');

  //
  static AppIcon get bestSIPFunds => AppIcon('$_basePath/best_sip_funds.png');
  static AppIcon get startWithHund => AppIcon('$_basePath/start_with_hud.png');
  static AppIcon get largeCapFunds => AppIcon('$_basePath/large_cap_funds.png');
  static AppIcon get topPerfFunds => AppIcon('$_basePath/top_perf_funds.png');

  //
  static AppIcon get aeroplane => AppIcon('$_basePath/aeroplane.png');
  static AppIcon get bus => AppIcon('$_basePath/BUS.png');
  static AppIcon get train => AppIcon('$_basePath/train.png');
  static AppIcon get hotel => AppIcon('$_basePath/hotel.png');

  //
  static AppIcon get buyFasTag => AppIcon('$_basePath/buy_fast_tag.png');
  static AppIcon get metro => AppIcon('$_basePath/metro.png');
  static AppIcon get rechargeFasTag =>
      AppIcon('$_basePath/recharge_fast_tag.png');
  static AppIcon get carAssurance => AppIcon('$_basePath/car_assurance.png');

  static AppIcon get goldSavings => AppIcon('$_basePath/gold_savings.png');
  static AppIcon get playstore => AppIcon('$_basePath/playstore.png');
  static AppIcon get twentyFourGold => AppIcon('$_basePath/24k_gold.png');
  static AppIcon get brandVouchers => AppIcon('$_basePath/brand_vouchers.png');

  //
  static AppIcon get shareMarket => AppIcon('$_basePath/share_market.png');
  static AppIcon get phonepeBusiness =>
      AppIcon('$_basePath/phonepe_business.png');
  static AppIcon get indus => AppIcon('$_basePath/indus.png');

  //
  static AppIcon get teluguMatrimony =>
      AppIcon('$_basePath/telugu_matrimony.png');
  static AppIcon get mobilla => AppIcon('$_basePath/mobilla.png');
  static AppIcon get minimalist => AppIcon('$_basePath/minimalist.png');
  static AppIcon get derma => AppIcon('$_basePath/derma.png');
  static AppIcon get kapiva => AppIcon('$_basePath/kapiva.png');
  static AppIcon get acwo => AppIcon('$_basePath/acwo.png');
  static AppIcon get astrotalk => AppIcon('$_basePath/astrotalk.png');
  static AppIcon get plum => AppIcon('$_basePath/plum.png');
}

class AppIcon {
  final String path;

  AppIcon(this.path);

  Widget toIconLabel([String? title, double width = 42, double height = 42]) =>
      Column(
        spacing: 4.0,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              path,
              fit: BoxFit.fitHeight,
              height: height,
              width: width,
            ),
          ),
          if (title != null)
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
        ],
      );
}
