
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Presentation%20Layer/Bank%20And%20Expenses/view/BankAndExpenses.dart';

import 'package:untitled/Utils/app_theme.dart';

import '../../../Utils/Widgets/drawer_class.dart';


class HomeScreen extends StatefulWidget {
    HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
 late TabController tabController;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }
  
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
          title:  Text("Point"),
          bottom:PreferredSize(preferredSize: Size.fromHeight(50),
              child: Padding(
                padding:   EdgeInsets.symmetric(horizontal: 8.0*scaleFactor),
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12*scaleFactor),
                    color: AppTheme.ContainerColor,
                  ),
                  child: TabBar(

                      controller: tabController,
                      dividerColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      overlayColor: WidgetStateProperty.all(AppTheme.ContainerColor),
                      labelColor: Theme.of(context).textTheme.displayLarge?.color,
                      indicator:
                      BoxDecoration(
                          color: AppTheme.accentColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12*scaleFactor),



                      ),
                      tabs: [
                        Tab(child:Text('Given Points',style: Theme.of(context).textTheme.bodyMedium,),),
                        Tab(child:Text('Pending',style: Theme.of(context).textTheme.bodyMedium),),

                      ]),
                ),
              ),),

          actions: [

            IconButton(onPressed: ( ){},

                icon: Icon(Icons.person_2,size: 29*scaleFactor,)),
            SizedBox(width: 8*scaleFactor,),
          ],
        ),
        drawer: DrawerClass(),

        body:  TabBarView(
          controller: tabController,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  // decoration:
                  // AppTheme.backgroundImageDecoration,
                  color: AppTheme.GradientColoroff,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15*scaleFactor,
                        ),
                        SafeArea(
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
                                            padding: EdgeInsets.symmetric(vertical: 16*scaleFactor,
                                                horizontal: 35*scaleFactor),
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
                        SizedBox(
                          height: 15*scaleFactor,
                        ),
                        SafeArea(child: UserDataTable())
                      ],
                    ),
                  ),
                )
              ],
            ),
        ///
            ///
            ///
            ///
            /// Second Screen
            ///
            ///
            ///
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: AppTheme.backgroundImageDecoration,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15*scaleFactor,
                        ),
                        SafeArea(
                          child: Container(
                            width: 375*scaleFactor,
                            height: 250*scaleFactor,
                            decoration: BoxDecoration(
                                color: AppTheme.ContainerColor,
                                  gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                  AppTheme.GradientColoroff,
                                              
                                  AppTheme.ContainerColor.withOpacity(.7),
                                  AppTheme.accentColor.withOpacity(.2),
                                              
                                  ]),
                                borderRadius: BorderRadius.circular(8*scaleFactor)
                            ),
                            child: SingleChildScrollView(
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
                    
                    
                        SizedBox(
                          height: 15*scaleFactor,
                        ),
                        SafeArea(child: UserDataTable())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
      );
  }
}




class UserDataTable extends StatefulWidget {
  const UserDataTable({super.key});

  @override
  State<UserDataTable> createState() => _UserDataTableState();
}

class _UserDataTableState extends State<UserDataTable> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return   Container(
      width: 375*scaleFactor,
      height: MediaQuery.sizeOf(context).height*.5,
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8*scaleFactor),
          boxShadow: [

      BoxShadow(
      color: Colors.grey.withOpacity(0.4),
      blurRadius: 2,
      spreadRadius: 2,
      offset: Offset(2, 2), // Bottom-right shadow
    ),
    BoxShadow(
    color: Colors.amber.withOpacity(0.2),
    blurRadius: 2,
    spreadRadius: 2,
    offset: Offset(-2, -2), // Top-left shadow
    ),
    BoxShadow(
    color: Colors.amber.withOpacity(0.2),
    blurRadius: 2,
    spreadRadius: 2,
    offset: Offset(-2, 2), // Bottom-left shadow
    ),
    BoxShadow(
    color: Colors.amber.withOpacity(0.2),
    blurRadius: 2,
    spreadRadius: 2,
    offset: Offset(2, -2), // Top-right shadow
    ),
          ],
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.accentColor.withOpacity(.1),
              AppTheme.backgroundBlack.withOpacity(.8),
              AppTheme.primaryTextColor.withOpacity(.6),
              AppTheme.primaryRed

              //AppTheme.primaryRed.withOpacity(.3),
            ]),

      ),
      child: Column(
        children: [
          DataTable(
              border: TableBorder(
                  verticalInside: BorderSide(color: Colors.white)
              ),
              columns: [
                DataColumn(label: Text("Sr.no",style: Theme.of(context).textTheme.displayLarge,)),
                DataColumn(label: Text("Name",style: Theme.of(context).textTheme.displayLarge)),
                DataColumn(label: Text("Score",style: Theme.of(context).textTheme.displayLarge)),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1",style: Theme.of(context).textTheme.displayMedium)),
                  DataCell(Text("Ahmed",style: Theme.of(context).textTheme.displayMedium)),
                  DataCell(Text("100",style: Theme.of(context).textTheme.displayMedium)),
                ]),
                DataRow(cells: [
                  DataCell(Text("2",style: Theme.of(context).textTheme.displayMedium)),
                  DataCell(Text("Ahmed",style: Theme.of(context).textTheme.displayMedium)),
                  DataCell(Text("100",style: Theme.of(context).textTheme.displayMedium)),
                ]),


              ])
        ],
      ),

    );
  }
}

