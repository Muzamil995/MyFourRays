import 'package:flutter/material.dart';
import 'package:untitled/Utils/Widgets/drawer_class.dart';
import 'package:untitled/Utils/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        actions: [IconButton(onPressed: ( ){},
            icon: Icon(Icons.person))],
      ),
      drawer: DrawerClass(),
      body: Container(
        decoration: AppTheme.backgroundImageDecoration,
        child: SingleChildScrollView (
          child: Column(
            children: [
              CustomListTile(
                title: "Access On/Off",
                icon: Icons.access_time,
                backgroundColor: Colors.red,
              ),
              CustomListTile(
                title: "Send Pending",
                icon: Icons.send,
                backgroundColor: Colors.orange,
              ),
              CustomListTile(
                title: "System On/Off",
                icon: Icons.settings,
                backgroundColor: Colors.yellow,
                iconColor: Colors.black,
              ),
              CustomListTile(
                title: "Raffle Drawing",
                icon: Icons.card_giftcard,
                backgroundColor: Colors.green,
              ),
              CustomListTile(
                title: "Blk Machines",
                icon: Icons.computer,
                backgroundColor: Colors.lightGreen,
              ),
              CustomListTile(
                title: "Visitor On/Off",
                icon: Icons.person,
                backgroundColor: Colors.teal,
              ),
              CustomListTile(
                title: "Report",
                icon: Icons.bar_chart,
                backgroundColor: Colors.cyan,
              ),
              CustomListTile(
                title: "Raffles",
                icon: Icons.casino,
                backgroundColor: Colors.pink,
              ),
              CustomListTile(
                title: "Pulls",
                icon: Icons.cloud_download,
                backgroundColor: Colors.orangeAccent,
              ),
              CustomListTile(
                title: "Tag",
                icon: Icons.label,
                backgroundColor: Colors.white,
                iconColor: Colors.black,
              ),
              CustomListTile(
                title: "Extra Pic",
                icon: Icons.image,
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CustomListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final Color? iconColor;

  const CustomListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    this.iconColor,
  }) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the scale factor as necessary to maintain the aspect ratio
    final double scaleFactor = screenWidth / 390.0;

    // ignore: deprecated_member_use
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Padding(
      padding:   EdgeInsets.all(8.0*scaleFactor),
      child: Container(
        color: widget.backgroundColor,
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: widget.iconColor ?? Colors.white,
          ),
          title: Text(
            widget.title,
            style: TextStyle(
              color: widget.iconColor ?? Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
