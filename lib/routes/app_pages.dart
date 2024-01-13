// ignore_for_file: constant_identifier_names

import 'package:crypto_app/pages/account_pages/bindings/change_password_binding.dart';
import 'package:crypto_app/pages/account_pages/views/change_password_views.dart';
import 'package:crypto_app/pages/buying/buying_selling_binding.dart';
import 'package:crypto_app/pages/buying/buying_selling_view.dart';
import 'package:crypto_app/pages/confirm_buy/confirm_buy_binding.dart';
import 'package:crypto_app/pages/confirm_buy/confirm_buy_view.dart';
import 'package:crypto_app/pages/confirm_payment/confirm_payment_binding.dart';
import 'package:crypto_app/pages/confirm_payment/confirm_payment_view.dart';
import 'package:crypto_app/pages/dashboard_pages/dashboard/dashboard_binding.dart';
import 'package:crypto_app/pages/dashboard_pages/dashboard/dashboard_view.dart';
import 'package:crypto_app/pages/dashboard_pages/qr_code/qr_code_binding.dart';
import 'package:crypto_app/pages/dashboard_pages/qr_code/qr_code_view.dart';
import 'package:crypto_app/pages/dashboard_pages/request_coin/request_coin_binding.dart';
import 'package:crypto_app/pages/dashboard_pages/request_coin/request_coin_view.dart';
import 'package:crypto_app/pages/dashboard_pages/send_coin/send_bitcoin_view.dart';
import 'package:crypto_app/pages/dashboard_pages/send_coin/send_coin_binding.dart';
import 'package:crypto_app/pages/exchange/exchange_binding.dart';
import 'package:crypto_app/pages/exchange/exchange_view.dart';
import 'package:crypto_app/pages/home/home_binding.dart';
import 'package:crypto_app/pages/home/home_view.dart';
import 'package:crypto_app/pages/settings/settings_binding.dart';
import 'package:crypto_app/pages/settings/settings_view.dart';
import 'package:crypto_app/pages/transaction_pages/bindings/registered_transaction_binding.dart';
import 'package:crypto_app/pages/transaction_pages/bindings/transact_detail_binding.dart';
import 'package:crypto_app/pages/transaction_pages/bindings/transaction_binding.dart';
import 'package:crypto_app/pages/transaction_pages/bindings/transaction_details_binding.dart';
import 'package:crypto_app/pages/transaction_pages/views/registered_transactions_view.dart';
import 'package:crypto_app/pages/transaction_pages/views/transact_detail_view.dart';
import 'package:crypto_app/pages/transaction_pages/views/transaction_details_view.dart';
import 'package:crypto_app/pages/transaction_pages/views/transaction_view.dart';
import 'package:flutter/animation.dart';

import '../pages/welcome/welcome_view.dart';
import '../pages/welcome/welcome_binding.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.WELCOME;


  static final routes = [
    GetPage(
      name: Routes.WELCOME, 
      page:()=> const WelcomeView(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: Routes.DEFAULT,
      page:()=> const DashBoardView(),
      transition: Transition.fadeIn,
      popGesture: true,
      curve: Curves.fastLinearToSlowEaseIn,
      transitionDuration: const Duration(milliseconds: 800),
      binding: DashboardBinding(),
    ),

    //
    GetPage(
      name: Routes.HOME,
      page:()=> const HomeView(),
      transition: Transition.fade,
      binding: HomeBinding(),
    ),

    GetPage(
      name: Routes.CHANGE_PASSWORD,
      transition: Transition.rightToLeftWithFade,
      page:()=> const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),

    GetPage(
      name: Routes.TRANSACTIONS,
      transition: Transition.rightToLeftWithFade,
      page:()=> const TransactionsView(),
      binding: TransactionBinding(),
    ),

    GetPage(
      name: Routes.EXCHANGE,
      transition: Transition.rightToLeftWithFade,
      page:()=> const ExchangeView(),
      binding: ExchangeBinding(),
    ),

    GetPage(
      name: Routes.BUY_SELL,
      transition: Transition.rightToLeftWithFade,
      page:()=> const BuyingSellingView(),
      binding: BuyingSellingBinding(),
    ),

    GetPage(
      name: Routes.SETTINGS,
      transition: Transition.rightToLeftWithFade,
      page:()=> const SettingsView(),
      binding: SettingsBinding(),
    ),

    GetPage(
      name: Routes.CONFIRM_PAYMENT,
      transition: Transition.rightToLeftWithFade,
      page:()=> const ConfirmPaymentView(),
      binding: ConfirmPaymentBinding(),
    ),

    GetPage(
      name: Routes.CONFIRM_BUY,
      transition: Transition.rightToLeftWithFade,
      page:()=> const ConfirmBuyView(),
      binding: ConfirmBuyBinding(),
    ),

    GetPage(
      name: Routes.MY_QRCODE,
      transition: Transition.rightToLeftWithFade,
      page:()=> QrCodeView(),
      binding: QrCodeBinding(),
    ),

    GetPage(
      name: Routes.SEND_BITCOIN,
      transition: Transition.rightToLeftWithFade,
      page:()=> const SendBitCoinView(),
      binding: SendBitCoinBinding(),
    ),

    GetPage(
      name: Routes.REQUEST_BITCOIN,
      transition: Transition.rightToLeftWithFade,
      page:()=> const RequestCoinView(),
      transitionDuration: const Duration(milliseconds: 200),
      curve: Curves.linear,
      binding: RequestCoinBinding(),
    ),

    GetPage(
      name: Routes.TRANSACTION_DETAIL,
      transition: Transition.rightToLeftWithFade,
      page:()=> const TransactionDetailsView(),
      binding: TransactionDetailsBinding(),
      transitionDuration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    ),

    GetPage(
      name: Routes.TRANSACT_DETAIL_SCALE_UP,
      transition: Transition.rightToLeftWithFade,
      page:()=> const TransactDetailView(),
      binding: TransactDetailBinding(),
    ),

    GetPage(
      name: Routes.REGISTERED_TRANSACTIONS,
      transition: Transition.rightToLeftWithFade,
      page:()=> const TransactionRegisteredView(),
      binding: TransactionRegisteredBinding(),
      transitionDuration: const Duration(milliseconds: 500),

    ),
  ];
}

/**
 s
**/