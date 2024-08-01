import 'package:flutter/material.dart';
import 'package:project2two/shared/shared%20network/remode/dio_helper.dart';

import 'modules/DeathFile/Death_File.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Death File Form App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DeathFileForm(),
    );
  }
}
