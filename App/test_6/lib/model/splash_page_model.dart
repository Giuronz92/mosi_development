import 'package:flutter/material.dart';

class SplashPageModel {
  final String title;
  final String description;
  final Color backgroundColor;

  const SplashPageModel({
    required this.backgroundColor,
    required this.title,
    required this.description,
  });
}

final splashPages = [
  SplashPageModel(
    title: "Benvenuto in Sidea Group",
    description:
        "Nutriamo il talento. Per trasformare progetti e ambizioni in realtà. Per crescere, migliorare e creare benessere. Con Sidea, con te.",
    backgroundColor: Colors.indigo,
  ),
  SplashPageModel(
    title: "LE AREE DI BUSINESS",
    description:
        "Operiamo in mercati competitivi e su progetti a elevata complessità con un approccio sia consulenziale sia operativo con tre unità di business integrate e interconnesse.",
    backgroundColor: Colors.blue,
  ),
  SplashPageModel(
    title: "Tecnologie",
    description:
        "Adobe - Amazon Web Services - Data lake - Google Cloud Platform - PWA - Progressive Web App - Salesforce - Selligent",
    backgroundColor: Colors.indigo,
  ),
];
