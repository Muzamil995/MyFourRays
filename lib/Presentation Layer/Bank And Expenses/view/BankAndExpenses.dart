
import 'package:flutter/material.dart';
import 'package:untitled/Presentation%20Layer/Home_Point_Screen/view/home_screen.dart';

import '../../../Utils/Widgets/drawer_class.dart';
import '../../../Utils/app_theme.dart';
class BankAndExpenses extends StatefulWidget {
  const BankAndExpenses({super.key});

  @override
  State<BankAndExpenses> createState() => _BankAndExpensesState();
}

class _BankAndExpensesState extends State<BankAndExpenses>  with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 2, vsync: this);
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
            title:  Text("Bank & Expenses"),
            bottom:PreferredSize(preferredSize: Size.fromHeight(50),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12*scaleFactor),
                  color: AppTheme.ContainerColor,
                ),
                child: TabBar(

                    controller: tabController,

                    indicatorSize: TabBarIndicatorSize.tab,
                    overlayColor: WidgetStateProperty.all(AppTheme.ContainerColor),
                    labelColor: Theme.of(context).textTheme.displayLarge?.color,
                    indicator:
                    BoxDecoration(
                      color: AppTheme.accentColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8*scaleFactor),



                    ),
                    tabs: [
                      Tab(child:Text('Bank',style: Theme.of(context).textTheme.bodyMedium,),),
                      Tab(child:Text('Expenses',style: Theme.of(context).textTheme.bodyMedium),),

                    ]),
              ),),

            actions: [

              IconButton(onPressed: ( ){},

                  icon: Icon(Icons.person_2,
                    size: 29*scaleFactor,)),
              SizedBox
                (width: 8*scaleFactor,),
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
                    decoration: AppTheme.backgroundImageDecoration,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15*scaleFactor,
                          ),
                          Container(
                            width: 375*scaleFactor,
                            height: 320*scaleFactor,
                            decoration: BoxDecoration(
                                color: AppTheme.ContainerColor,
                                borderRadius:
                                BorderRadius.circular(8*scaleFactor),
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:   EdgeInsets.all(14.0*scaleFactor),
                                  child: Row(
                                    children: [
                                      Text("Amount",
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
                      
                      
                      
                                    ],
                                  ),
                                ),
                      Padding(
                        padding:   EdgeInsets.only(left: 14*scaleFactor,right: 14*scaleFactor,bottom: 14*scaleFactor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("Description",
                              style: Theme.of(context).textTheme.bodyMedium,),
                            SizedBox(height: 5*scaleFactor,),

                            Container(
                              //height: 100,
                              width: 322*scaleFactor,
                              child: TextField(
                                style: Theme.of(context).textTheme.bodyMedium,
                                cursorColor: AppTheme.primaryBlack,
                                maxLines: 3,
                                decoration: InputDecoration(

                                  hintText: "Like",hintMaxLines: 3,

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
                          ],
                        ),
                      ),

                                Padding(
                                  padding:   EdgeInsets.only(left:118.0*scaleFactor),
                                  child: ElevatedButton(
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
                                ),
                      
                      
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15*scaleFactor,
                          ),
                          TableBankExpenses()
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
                          Container(
                            width: 375*scaleFactor,
                            height: 320*scaleFactor,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:   EdgeInsets.all(14.0*scaleFactor),
                                  child: Row(
                                    children: [
                                      Text("Amount",
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



                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:   EdgeInsets.only(left: 14*scaleFactor,
                                      right: 14*scaleFactor,
                                      bottom: 14*scaleFactor),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text("Description",
                                        style: Theme.of(context).textTheme.bodyMedium,),
                                      SizedBox(height: 5*scaleFactor,),

                                      Container(
                                        //height: 100,
                                        width: 322*scaleFactor,
                                        child: TextField(
                                          style: Theme.of(context).textTheme.bodyMedium,
                                          cursorColor: AppTheme.primaryBlack,
                                          maxLines: 3,
                                          decoration: InputDecoration(

                                            hintText: "Like",hintMaxLines: 3,

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
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding:   EdgeInsets.only(left:118.0*scaleFactor),
                                  child: ElevatedButton(
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
                                ),


                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15*scaleFactor,
                          ),
                          TableBankExpenses()
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

 class TableBankExpenses extends StatefulWidget {
   const TableBankExpenses({super.key});

   @override
   State<TableBankExpenses> createState() => _TableBankExpensesState();
 }

 class _TableBankExpensesState extends State<TableBankExpenses> {
   @override
   Widget build(BuildContext context) {
     return  Container(

       height: MediaQuery.sizeOf(context).height*.5,
       decoration:BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(8),

         gradient: LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             colors: [
               AppTheme.accentColor.withOpacity(.3),
               AppTheme.backgroundBlack.withOpacity(.6),
               AppTheme.primaryTextColor.withOpacity(.5)

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
                 DataColumn(label: Text("Bank",style: Theme.of(context).textTheme.displayLarge,)),
                 DataColumn(label: Text(" ",style: Theme.of(context).textTheme.displayLarge)),
                 DataColumn(label: Text(" ",style: Theme.of(context).textTheme.displayLarge)),
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


