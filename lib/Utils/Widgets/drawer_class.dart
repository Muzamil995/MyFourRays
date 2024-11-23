import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Presentation%20Layer/Home_Point_Screen/view/home_screen.dart';
import 'package:untitled/Presentation%20Layer/New_Memeber/view/new_memeber_screen.dart';
import 'package:untitled/Presentation%20Layer/Setting_Screen/view/setting_screen.dart';
import 'package:untitled/Presentation%20Layer/Ticket_Screen/view/ticket_screen.dart';

import '../../Presentation Layer/Bank And Expenses/view/BankAndExpenses.dart';
import '../app_theme.dart';
class DrawerClass extends StatefulWidget {
  const DrawerClass({super.key});

  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Drawer(
      backgroundColor: AppTheme.GradientColoroff ,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  color:  Color(0xffFFFFFF).withOpacity(.7),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      AppTheme.accentColor.withOpacity(.4),
                  AppTheme.GradientColoroff,

                ])
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:    [

                  Image(
                    width: 73*scaleFactor,
                    height: 75*scaleFactor,
                    image: AssetImage('assets/Four-Rays-Logo 1.png',
                    ),),
                  Padding(
                    padding: EdgeInsets.only(left: 2.0*scaleFactor),
                    child: Text("Sophia Rose", style: GoogleFonts.inter(color: Colors.black, fontSize: 20*scaleFactor,fontWeight: FontWeight.bold)),
                  ),
                  Text("UI/UX Designer", style: GoogleFonts.inter(color: Colors.black, fontSize: 16*scaleFactor))
                ],
              )
          ),

          ListTile(
            leading: Icon(Icons.money_sharp,color: Theme.of(context).iconTheme.color,),
            title: Text("Point", style:  Theme.of(context).textTheme.bodyMedium ),
            onTap: () {
              //Navigator.pushNamed(context, '/point');
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));

            },
          ),
          ListTile(
            leading: Icon(Icons.local_activity,color: Theme.of(context).iconTheme.color),
            title: Text("Ticket", style:   Theme.of(context).textTheme.bodyMedium  ),
            onTap: () {
             // Navigator.pushNamed(context, '/ticket');
              Navigator.push(context, MaterialPageRoute(builder: (context) => TicketScreen()));

            },
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Theme.of(context).iconTheme.color),
            title: Text("Settings", style:  Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person,color: Theme.of(context).iconTheme.color),
            title: Text("New Member", style:   Theme.of(context).textTheme.bodyMedium ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewMemberScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance,color: Theme.of(context).iconTheme.color,),
            title: Text("Bank & Expenses", style:  Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BankAndExpenses()));
            },
          ),
        ],
      ),
    ) ;
  }
}