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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
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
      contentPadding: const EdgeInsets.only(left: 8),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(5),
      //   borderSide: const BorderSide(
      //     color: Colors.black26,
      //   ),
      // ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.black26,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.amber,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: Colors.black26,
        ),
      ),
      hintStyle: const TextStyle(
        color: Colors.black45,
        fontSize: 16,
      ),
      suffixIconColor: Colors.black38,
      prefixIconColor: Colors.black38,
    ),
  );
}
