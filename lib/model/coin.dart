
class Coin {
  Coin({
   required this.symbol,
   required this.price,
  });

  String symbol;
  String price;

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
    symbol: json["symbol"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "symbol": symbol,
    "price": price,
  };
}
