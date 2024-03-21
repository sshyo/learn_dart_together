import 'dart:math';
class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

// 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
void main() {
  final traderNames = transactions
      .map((transaction) => transaction.trader.name) // 거래자의 이름 추출
      .toSet() // 중복 제거
      .toList(); // 리스트로 변환
  traderNames.sort(); // 알파벳 순으로 정렬
  print(traderNames);
}