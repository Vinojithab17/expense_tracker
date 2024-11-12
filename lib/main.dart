import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColourSceme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkThemme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        // dark() no longer takes any arguments
        colorScheme: kDarkThemme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkThemme.secondary,
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkThemme.primaryContainer,
              foregroundColor: kDarkThemme.onPrimaryContainer),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColourSceme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColourSceme.onPrimaryContainer,
          foregroundColor: kColourSceme.primaryContainer,
          centerTitle: true,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColourSceme.secondary,
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColourSceme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: kColourSceme.secondary,
              ),
            ),
      ),
      themeMode: ThemeMode.light, // this is by defalut true
      home: const Expenses(),
    ),
  );
}
