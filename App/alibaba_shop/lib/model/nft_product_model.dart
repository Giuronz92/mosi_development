import 'package:flutter/material.dart';

class NFTProductModel {
  final String imageUrl;
  final String name;
  final double price;

  const NFTProductModel({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

final products = [
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Reese_s2PeanutButterCups42g_900x.jpg?v=1665048019",
    name: "Reese's 2",
    price: 1.69,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/kit-kat-white-42g_2_900x.jpg?v=1674037511",
    name: "Kit Kat White",
    price: 2.69,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Lion-Caramel-Blond-40g_900x.jpg?v=1673348429",
    name: "Lion Caramel",
    price: 1.49,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Payday-Chocolatey-52g_1800x1800.jpg?v=1635395222",
    name: "Pay Day Chocolatey",
    price: 2.49,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Hostess-Twinkies-385g_900x.jpg?v=1614021551",
    name: "Hostess Twinkies",
    price: 8.99,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/JouyCo-Cravingz-Spongiez-Golden-200g_900x.jpg?v=1673604491",
    name: "Cravingz Spongiez",
    price: 2.49,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/hostess-dingdongs-caramel-360g_900x.jpg?v=1642179992",
    name: "Hostess DingDong",
    price: 7.99,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Jack-Link_s-Beef-Jerky-Original-25g_2_900x.jpg?v=1631026135",
    name: "Jack Link's Beef",
    price: 3.49,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/3-jack-link_s_900x.jpg?v=1627927141",
    name: "3 Jack Links",
    price: 9.49,
  ),
  NFTProductModel(
    imageUrl:
        "https://cdn.shopify.com/s/files/1/0076/3029/1041/products/Crazy-Bastard-Sauce-Chipotle-_-Pinepple-100ml_900x.jpg?v=1654072951",
    name: "Crazy Bastard Sauce",
    price: 8.99,
  ),
];
