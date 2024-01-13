

import 'package:flutter/material.dart';

class CryptoCurrency{
  int? id;
  String? name;
  String? logo;
  double? value;
  String? initial;
  double? percentage;
  Color? color;

  CryptoCurrency({
     this.id,
     this.name,
     this.initial,
     this.value,
     this.logo ,
     this.color,
     this.percentage
  });

  String calculateDollar(double value){
    var answer = value * 5841.12;
    return (double
        .parse((answer)
        .toStringAsFixed(3))
        .toString());
  }
}

List<CryptoCurrency> currencies = [
  CryptoCurrency(id: 1, name: "BitCoin", initial: "BTC", value: 2.00102000, logo: "bitcoin-logo.svg", percentage: 42, color: const Color(0xFFfc5600)),
  CryptoCurrency(id: 2, name: "Etherium", initial: "ETH", value: 3.30102000, logo: "ethereum_2.svg", percentage: 29, color: const Color(0xFF00b25f)),
  CryptoCurrency(id: 3, name: "LiteCoin", initial: "LTC", value: 1.30102000, logo: "litecoin_1.svg", percentage: 29, color: const Color(0xFF1580ff))
];


List<CryptoCurrency> currencies2 = [
  CryptoCurrency(id: 1, name: "BitCoin", initial: "BTC", value: 2.00102000, logo: "bitcoin-logo.svg", percentage: 42, color: const Color(0xFFfc5600)),
  CryptoCurrency(id: 2, name: "Bitcoin Cash", initial: "BCH", value: 3.30102000, logo: "bitcoin-logo.svg", percentage: 29, color: const Color(0xFF33339c)),
  CryptoCurrency(id: 3, name: "LiteCoin", initial: "LTC", value: 1.30102000, logo: "litecoin_1.svg", percentage: 29, color: const Color(0xFF33339c))
];