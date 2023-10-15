import 'package:flutter/material.dart';

themedData() {
  return ThemeData(
    primarySwatch: Colors.amber,
    primaryColor: Colors.amber,
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        // backgroundColor: Colors.purple,
        foregroundColor: Colors.amber.shade700,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ElevatedButton.styleFrom(
        // backgroundColor: Colors.purple,
        // disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.amber,
        foregroundColor: Colors.white,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(8),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
        gapPadding: 8.0,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.grey.shade400,
        ),
        gapPadding: 8.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.amber,
        ),
        gapPadding: 8.0,
      ),
      suffixIconColor: Colors.black38,
      prefixIconColor: Colors.black38,
    ),
  );
}
