import 'package:flutter/material.dart';
import 'package:flutter_application_2/UI/widgets/main_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
        ),
        initialRoute: '/mainScreen',
        routes: {'/mainScreen': (context) => MainScreen()});
  }
}
