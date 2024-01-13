

import 'package:flutter/material.dart';

class Transaction{
  int? id;
  String? icon;
  Color? color;
  String? status;
  String? currency;
  bool? rise;
  double? value;
  DateTime? date;
  String? type;

  Transaction({
    required this.id,
    required this.icon,
    required this.color,
    required this.type,
    required this.status,
    required this.rise,
    required this.value,
    required this.currency,
    required this.date ,
  });
}

List<Transaction> transactions = [
  Transaction(id: 1, icon: "upload.svg", color: const Color(0xFF00c95c), type: "Received",status: "Confirmed", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 2, icon: "down.svg", color: const Color(0xFFff4545), type: "Received",status: "Denied", rise: false, value: 0.03102401, date: DateTime.now(), currency: "LTC"),
  Transaction(id: 3, icon: "upload.svg", color: const Color(0xFF00c95c), type: "Received",status: "Successful", rise: true, value: 0.02102000, date: DateTime.now(), currency: "BCH"),
  Transaction(id: 4, icon: "down.svg", color: const Color(0xFFff4545), type: "Received",status: "Successful", rise: false, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 5, icon: "down.svg", color: const Color(0xFFff4545), type: "Received",status: "Successful", rise: false, value: 0.03102401, date: DateTime.now(), currency: "LTC"),
  Transaction(id: 6, icon: "upload.svg", color: const Color(0xFF00c95c), type: "Received",status: "Successful", rise: true, value: 0.02102000, date: DateTime.now(), currency: "BCH")
];

List<Transaction> histories = [
  Transaction(id: 1, icon: "down-arrow.svg", color: const Color(0xFF00c95c),type: "Received", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 2, icon: "pause.svg", color: const Color(0xFFfd9300), type: "Received", status: "Pending", rise: false, value: 0.03102401, date: DateTime.now(), currency: "LTC"),
  Transaction(id: 3, icon: "down-arrow.svg", color: const Color(0xFF00c95c), type: "Buying", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 4, icon: "exclamation.svg", color: const Color(0xFFff3c3c),type: "Received", status: "Rejected", rise: false, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 5, icon: "pause.svg", color: const Color(0xFFfd9300),type: "Buying", status: "Pending", rise: false, value: 0.03102401, date: DateTime.now(), currency: "LTC"),
  Transaction(id: 6, icon: "down-arrow.svg", color: const Color(0xFF00c95c),type: "Received", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 7, icon: "exclamation.svg", color: const Color(0xFFff3c3c),type: "Received", status: "Rejected", rise: false, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 8, icon: "down-arrow.svg", color: const Color(0xFF00c95c),type: "Received", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 9, icon: "down-arrow.svg", color: const Color(0xFF00c95c),type: "Received", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BTC"),
  Transaction(id: 10, icon: "down-arrow.svg", color: const Color(0xFF00c95c),type: "Received", status: "Successful", rise: true, value: 0.00102000, date: DateTime.now(), currency: "BHC"),
];