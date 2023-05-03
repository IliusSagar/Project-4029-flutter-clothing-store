import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clothing_store_app/app_styles.dart';
import 'package:flutter_clothing_store_app/size_config.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'Hello, Welcome',
                    style: kEncodeSansRegular.copyWith(
                      color: kDarkBrown,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
