
import 'package:flutter/material.dart';

import '../../../Utils/Widgets/drawer_class.dart';
import '../../../Utils/app_theme.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return
      Scaffold(
        appBar: AppBar(

          centerTitle: true,
          backgroundColor: Colors.transparent,
          title:  Text("Ticket"),

          actions: [

            IconButton(onPressed: ( ){},

                icon: Icon(Icons.person_2,size: 29*scaleFactor,)),
            SizedBox(width: 8*scaleFactor,),
          ],
        ),
        drawer: DrawerClass(),


        body:  Stack(

          children: [
            Container(
              decoration: AppTheme.backgroundImageDecoration,
            ),
            SafeArea(
              child: Padding(
                padding:   EdgeInsets.symmetric(horizontal: 18.0*scaleFactor,vertical: 40*scaleFactor),
                child: Container(
                  width: 375*scaleFactor,
                  height: 250*scaleFactor,
                  decoration: BoxDecoration(
                      color: AppTheme.ContainerColor,
                      borderRadius: BorderRadius.circular(8*scaleFactor),
                      boxShadow: [
                        BoxShadow(
                            color: AppTheme.accentColor.withOpacity(.3),
                            blurRadius: 1,
                            spreadRadius: 1,
                            offset: Offset(0,4)
                        )
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            AppTheme.GradientColoroff,

                            AppTheme.ContainerColor.withOpacity(.7),
                            AppTheme.primaryRed.withOpacity(.8),

                          ])
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:   EdgeInsets.all(14.0*scaleFactor),
                        child: Row(
                          children: [
                            Text("Machine",
                              style: Theme.of(context).textTheme.bodyMedium,),
                            SizedBox(width: 18*scaleFactor,),
                            Container(
                              height: 54*scaleFactor,
                              width: 194*scaleFactor,
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyMedium,
                                cursorColor: AppTheme.primaryBlack,
                                decoration: InputDecoration(
                                  hintText: "Like",

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  AppTheme.primaryRed),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 18*scaleFactor,),
                            Image(
                              width: 33*scaleFactor,
                              height: 33*scaleFactor,
                              image: AssetImage('assets/minus.png'),
                            ),


                          ],
                        ),
                      ),

                      Padding(
                        padding:   EdgeInsets.all(12.0*scaleFactor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Amount",
                              style: Theme.of(context).textTheme.bodyMedium,),
                            GestureDetector(
                              onTap: () {},
                              child: Image(
                                width: 33*scaleFactor,
                                height: 33*scaleFactor,
                                image: AssetImage('assets/add.png'),

                              ),
                            ),
                            Container(
                              height: 54*scaleFactor,
                              width: 144*scaleFactor,
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyMedium,
                                cursorColor: AppTheme.primaryBlack,
                                decoration: InputDecoration(
                                  hintText: "Like",

                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  Colors.black),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8*scaleFactor),
                                    borderSide: BorderSide(color:  AppTheme.primaryRed),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Image(
                                width: 33*scaleFactor,
                                height: 33*scaleFactor,
                                image: AssetImage('assets/minus.png'),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding:   EdgeInsets.only(right: 72.0*scaleFactor,top: 15*scaleFactor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end
                          ,
                          children: [
                            Image(

                              image: AssetImage('assets/reboot.png'),
                              width: 38*scaleFactor,
                              height: 38*scaleFactor,
                            ),
                            SizedBox(width: 20*scaleFactor,),

                            ElevatedButton(
                              onPressed: () {
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFFBC1E2D)
                                  ,
                                  padding: EdgeInsets.symmetric(vertical: 16*scaleFactor, horizontal: 35*scaleFactor),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8*scaleFactor),
                                      side: BorderSide(
                                          color: Color(0xFFBC1E2D)
                                      )
                                  )
                              ),
                              child: Text(
                                'Set Points',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}
