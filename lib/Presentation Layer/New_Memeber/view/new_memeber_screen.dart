import 'package:flutter/material.dart';
import 'package:untitled/Utils/Widgets/drawer_class.dart';

import '../../../Utils/app_theme.dart';

class NewMemberScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dlController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Registration"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {},
              icon: Icon(Icons.person)),
        ],
      ),
      drawer: DrawerClass(),
      body: Stack(
        children: [
          Container(
            decoration: AppTheme.backgroundImageDecoration,
          ),
          Padding(
            padding:   EdgeInsets.all(16.0*scaleFactor),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60*scaleFactor,
                    backgroundColor: Colors.white,
                    // backgroundImage: AssetImage('assets/Four-Rays-Logo 1.png'),

                    child: CircleAvatar(
                      radius: 55*scaleFactor,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('assets/Four-Rays-Logo 1.png'),

                    ),
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: nameController,
                    hintText: "Name",
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: lastNameController,
                    hintText: "Last Name",
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: dlController,
                    hintText: "DL",
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: phoneController,
                    hintText: "Phone",
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: dobController,
                    hintText: "DOB",
                  ),
                  SizedBox(height: 16*scaleFactor),
                  CustomTextField(
                    controller: commentsController,
                    hintText: "Comments",
                    maxLines: 3,
                  ),
                  SizedBox(height: 16*scaleFactor),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text("Pending",style: Theme.of(context).textTheme.displayLarge,),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(vertical: 13*scaleFactor,horizontal: 40*scaleFactor)

                        ),
                        child: Text("Register",style: Theme.of(context).textTheme.displayLarge,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      style: Theme.of(context).textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        filled: true,
        fillColor: Colors.white.withOpacity(.6),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
