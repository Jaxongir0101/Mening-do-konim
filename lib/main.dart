
import 'package:flutter/material.dart';
import 'package:my_dokon/providers/products.dart';
import 'package:provider/provider.dart';

import 'package:my_dokon/screens/home_page.dart';
import 'package:my_dokon/styles/my_shop_styles.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Products()),
      ],
      child:  MyApp(),
    ),);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  ThemeData theme = MyShopStyle.theme;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: HomePage(),
    );
  }
}
