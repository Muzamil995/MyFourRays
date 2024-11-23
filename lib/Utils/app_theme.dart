import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Define red and black theme colors
  static const Color primaryRed = Color(0xFFBC2934);
  // Main red color
  static const Color primaryBlack = Color(0xFF000000); // Main black color
  static const Color backgroundBlack = Color(0xFF121212); // Dark background color
  static const Color accentColor = Color(0xFFFFC107); // Accent color (e.g., yellow for contrast)
  static const Color primaryTextColor = Color(0xFFFFFFFF); // White text color for dark backgrounds
  static const Color secondaryTextColor = Color(0xFF000000); // Black text color for light backgrounds
  static const Color iconColor = Color(0xFF000000); // Icon color (black)
  static const Color appBarIconColor = Color(0xFFFFFFFF);
  // White icon color for AppBar leading icon
  static const Color ContainerColor = Color(0xffe3e3e1);

  static const Color GradientColoroff = Color(0xff707070);

  // Define ThemeData for the red and black theme
  static ThemeData get redBlackTheme {
    return ThemeData(
      primaryColor: primaryRed,
      scaffoldBackgroundColor: Colors.transparent, // Make it transparent for background image
      colorScheme: ColorScheme.dark(
        primary: primaryRed,
        secondary: primaryBlack,
      ),
      appBarTheme: AppBarTheme(
        //color: primaryRed,
        backgroundColor: Colors.transparent,
        titleTextStyle: GoogleFonts.inter(color: primaryTextColor, fontSize: 22,fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: appBarIconColor), // Set AppBar icon color to white
      ),
      textTheme: TextTheme(
        // tableText:GoogleFonts.inter(color:primaryTextColor, ),
        bodyLarge: GoogleFonts.inter(color: secondaryTextColor), // Use for body text
        bodyMedium: GoogleFonts.inter(color: backgroundBlack,fontSize: 19.5,fontWeight: FontWeight.bold),
        displayLarge: GoogleFonts.inter(color: primaryTextColor,fontSize: 20,fontWeight: FontWeight.bold), // Use for headlines
        displayMedium: GoogleFonts.inter(color: primaryTextColor,fontSize: 18,fontWeight: FontWeight.bold),
        // Display text
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryRed, // Button color set to red
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: primaryTextColor, // Text color
          backgroundColor: primaryRed, // Button background color
        ),
      ),
      // Define icon theme for consistent icon color
      iconTheme: IconThemeData(
        color: iconColor, // Set the icon color to black
      ),
    );
  }

  // BoxDecoration for containers
  static BoxDecoration get containerDecoration {
    return BoxDecoration(
      color: primaryBlack, // Use primary black color for container background
      borderRadius: BorderRadius.circular(12), // Rounded corners
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5), // Shadow color
          blurRadius: 10, // Soft shadow effect
          offset: Offset(0, 4), // Shadow position
        ),
      ],
    );
  }

  // Custom background image BoxDecoration
  static BoxDecoration get backgroundImageDecoration {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/login page.png'), // Replace with your image path
        fit: BoxFit.fill,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(.3),
          BlendMode.darken

        )
      ),
    );
  }
}
