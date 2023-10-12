import 'package:e_shop/application/home/home_bloc.dart';
import 'package:e_shop/core/dependency_injection/injectable.dart';
import 'package:e_shop/presentation/login/screen_login.dart';
import 'package:e_shop/presentation/splash_screen/splash_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const SAVE_KEY_NAME = "UserLoggedIn";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseDatabase database = FirebaseDatabase.instance;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade300,
            primarySwatch: Colors.blueGrey),
        home: SplashScreen(),
      ),
    );
  }
}
