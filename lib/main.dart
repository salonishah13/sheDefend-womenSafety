import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sheDefend/pages/sheDefend.dart';
import 'package:sheDefend/utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFEFF2F9),
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(ColorsValue().primary),
          appBarTheme: const AppBarTheme(
            color: Color.fromARGB(238, 234, 59, 59),
          ),
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0),
          ),
        ),
        initialRoute: "/",
        routes: {"/": (context) => sheDefend()});
  }
}
