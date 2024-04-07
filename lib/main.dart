import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/screens/chat_page.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          RegisterScreen.id: (context) => RegisterScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
        initialRoute: "LoginScreen");
  }
}
