import 'package:flutter/material.dart';
import 'package:untitled/Presentation%20Layer/Bank%20And%20Expenses/view/BankAndExpenses.dart';
import 'package:untitled/Presentation%20Layer/Login/view/login_screen.dart';
import 'package:untitled/Presentation%20Layer/New_Memeber/view/new_memeber_screen.dart';
import 'package:untitled/Presentation%20Layer/Setting_Screen/view/setting_screen.dart';

import 'package:untitled/Utils/app_theme.dart';


import 'Presentation Layer/Home_Point_Screen/view/home_screen.dart';
import 'Presentation Layer/Ticket_Screen/view/ticket_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4 Rays',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.redBlackTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Define the initial route here
        '/login': (context) => LoginScreen(),
        '/setting': (context) => SettingsScreen(),
        '/member': (context) => NewMemberScreen(),
        '/bankAndExpenses': (context) => BankAndExpenses(),
        '/ticket': (context) => TicketScreen(),
      },
    );
  }
}


