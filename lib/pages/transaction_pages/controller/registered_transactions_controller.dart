import 'package:crypto_app/global models/crypto_currency.dart';
import 'package:crypto_app/global models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionRegisteredController extends GetxController with GetSingleTickerProviderStateMixin{

  final CryptoCurrency cryptoCurrency = Get.arguments;
  static final GlobalKey<AnimatedListState> animatedListKey = GlobalKey<AnimatedListState>();

  late AnimationController animationController;
  late Animatable<Offset> offsetAnimation;
  var animatedTransactionList = <Transaction>[];

  @override
  void onInit() {

    super.onInit();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    offsetAnimation = Tween<Offset>(
      end: Offset.zero,
      begin: const Offset(1.0, 0.0),
    ).chain(CurveTween(curve: Curves.decelerate)) ;
    _loadTransactions();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  // fetching data from web api, db...
  _loadTransactions() {
    var future = Future(() {});
    for (var i = 0; i < transactions.length; i++) {
      future = future.then((_) {
        return Future.delayed(const Duration(milliseconds: 80), () {
          animatedTransactionList.add(transactions[i]);
          animatedListKey.currentState?.insertItem(animatedTransactionList.length - 1);
        });
      });
    }
  }


}
