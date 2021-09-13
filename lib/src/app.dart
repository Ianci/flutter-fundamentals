import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/src/screens/count_page.dart';
import 'package:my_first_app_flutter/src/screens/home_page.dart';


class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  //Context contiene la información del tree component
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: CountPage(),
      )
    );
  }
}