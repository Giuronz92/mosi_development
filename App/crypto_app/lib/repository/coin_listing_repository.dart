import 'package:crypto_app/model/coin_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CoinListingRepository {
  static Future<List<CoinModel>> all() async {
    final uri = Uri.parse(
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&convert=USD");

    final response = await http.get(uri, headers: {
      "X-CMC_PRO_API_KEY": "a68ece56-8aae-45d8-946d-03ceaaa2cc35",
    });

    final jsonData = json.decode(response.body);
    return List.from(jsonData["data"]).map((coinData) {
      return CoinModel.fromData(coinData);
    }).toList();
  }
}
