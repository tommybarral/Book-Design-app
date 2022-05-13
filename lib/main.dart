import 'package:book_design_app/models/book_data.dart';
import 'package:book_design_app/screens/book_details_screen.dart';
import 'package:book_design_app/screens/home_screen.dart';
import 'package:book_design_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './screens/welcome_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomeScreen(),
        routes: {
          WelcomeScreen.routeName: (context) => const WelcomeScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          BookDetailsScreen.routeName: (context) => const BookDetailsScreen(),
          SignInScreen.routeName: (context) => const SignInScreen(),
        },
      ),
    );
  }
}
