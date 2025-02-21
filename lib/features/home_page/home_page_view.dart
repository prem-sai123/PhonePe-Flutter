import 'package:flutter/material.dart';
import 'package:flutter_app/features/widgets/bordered_text.dart';
import 'package:flutter_app/features/widgets/gridview_section.dart';
import 'package:flutter_app/features/widgets/tranx_btns.dart';
import 'package:flutter_app/styles/icons.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: const [
        _TransferMoneySection(),
        TranxBtns(),
        _RechargeAndBillsSection(),
        _LoanSection(),
        _InsurnaceSection(),
        _WealthSection(),
        _TravelSection(),
        _TransitFoodSection(),
        _PurchaseSection(),
        _PhonePeAppsSection(),
        _SponsoredLinksSection(),
        SizedBox(height: 12.0),
      ],
    );
  }
}

class _TransferMoneySection extends StatelessWidget {
  const _TransferMoneySection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Transfer Money',
      additionalWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BorderedText(text: 'UPI Lite: Try Now'),
          BorderedText(
            leading: Icon(Icons.qr_code, size: 12),
            text: 'UPI ID: XXXXXXX123@ybl',
            trailing: Icon(Icons.chevron_right, size: 16),
          ),
        ],
      ),
      children: [
        AppIcons.toMobileNum.toIconLabel('To Mobile Number'),
        AppIcons.toBankUPI.toIconLabel('To Bank/UPI\nID'),
        AppIcons.toSelfAcc.toIconLabel('To Self Account'),
        AppIcons.checkBalance.toIconLabel('Check Bank Balance'),
      ],
    );
  }
}

class _RechargeAndBillsSection extends StatelessWidget {
  const _RechargeAndBillsSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Recharge & Pay Bills',
      enableViewAll: true,
      children: [
        AppIcons.mobileRecharge.toIconLabel('Mobile Recharge'),
        AppIcons.loanRepayment.toIconLabel('Loan Repayment'),
        AppIcons.creditCard.toIconLabel('Credit Card Payment'),
        AppIcons.rent.toIconLabel('Rent'),
      ],
    );
  }
}

class _LoanSection extends StatelessWidget {
  const _LoanSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Loan',
      enableViewAll: true,
      children: [
        AppIcons.creditScore.toIconLabel('Credit Score'),
        AppIcons.goldLoan.toIconLabel('Gold Loan'),
        AppIcons.mutualFund.toIconLabel('Mutual Fund Loan'),
        AppIcons.carFront.toIconLabel('Car'),
      ],
    );
  }
}

class _InsurnaceSection extends StatelessWidget {
  const _InsurnaceSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Insurance',
      enableViewAll: true,
      children: [
        AppIcons.bikeLeft.toIconLabel('Bike'),
        AppIcons.carLeft.toIconLabel('Car'),
        AppIcons.healthIns.toIconLabel('Health'),
        AppIcons.termLife.toIconLabel('Term Life'),
      ],
    );
  }
}

class _WealthSection extends StatelessWidget {
  const _WealthSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Wealth',
      enableViewAll: true,
      children: [
        AppIcons.bestSIPFunds.toIconLabel('Best SIP Funds'),
        AppIcons.startWithHund.toIconLabel('Start with ₹100'),
        AppIcons.largeCapFunds.toIconLabel('Large cap Funds'),
        AppIcons.topPerfFunds.toIconLabel('Top Performing Funds'),
      ],
    );
  }
}

class _TravelSection extends StatelessWidget {
  const _TravelSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Travel',
      enableViewAll: true,
      children: [
        AppIcons.aeroplane.toIconLabel('Flights'),
        AppIcons.bus.toIconLabel('Bus'),
        AppIcons.train.toIconLabel('Trains'),
        AppIcons.hotel.toIconLabel('Hotel'),
      ],
    );
  }
}

class _TransitFoodSection extends StatelessWidget {
  const _TransitFoodSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Transit & Food',
      enableViewAll: true,
      children: [
        AppIcons.buyFasTag.toIconLabel('Buy FASTag'),
        AppIcons.metro.toIconLabel('Metro'),
        AppIcons.rechargeFasTag.toIconLabel('Recharge FASTag'),
        AppIcons.carAssurance.toIconLabel('Roadside Assistance'),
      ],
    );
  }
}

class _PurchaseSection extends StatelessWidget {
  const _PurchaseSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Purchases',
      enableViewAll: true,
      children: [
        AppIcons.twentyFourGold.toIconLabel('Gold'),
        AppIcons.goldSavings.toIconLabel('Daily Gold Savings'),
        AppIcons.playstore.toIconLabel('Google Play'),
        AppIcons.brandVouchers.toIconLabel('Brand Vouchers'),
      ],
    );
  }
}

class _PhonePeAppsSection extends StatelessWidget {
  const _PhonePeAppsSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Apps by PhonePe',
      enableViewAll: true,
      children: [
        AppIcons.shareMarket.toIconLabel('Share Market'),
        AppIcons.phonepeBusiness.toIconLabel('Business'),
        AppIcons.indus.toIconLabel('Indus'),
      ],
    );
  }
}

class _SponsoredLinksSection extends StatelessWidget {
  const _SponsoredLinksSection();

  @override
  Widget build(BuildContext context) {
    return GridviewSection(
      title: 'Sponsored Links',
      enableViewAll: true,
      children: [
        AppIcons.teluguMatrimony.toIconLabel('Telugu Matrimony'),
        AppIcons.mobilla.toIconLabel('Mobilla'),
        AppIcons.minimalist.toIconLabel('Minimalist'),
        AppIcons.derma.toIconLabel('The Derma Co'),
        AppIcons.kapiva.toIconLabel('Kapiva'),
        AppIcons.acwo.toIconLabel('acwo'),
        AppIcons.astrotalk.toIconLabel('Astrotalk'),
        AppIcons.plum.toIconLabel('Plum'),
      ],
    );
  }
}
