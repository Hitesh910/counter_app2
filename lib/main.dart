import 'package:counter_app2/screen/home/provider/home_provider.dart';
import 'package:counter_app2/utils/app_routes.dart';
import 'package:counter_app2/utils/theme/provider.dart';
import 'package:counter_app2/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider()),
        ChangeNotifierProvider.value(value: ThemeProvider())
      ],
      child: Consumer(
        builder: (context, value, child) {
         return MaterialApp(
            debugShowCheckedModeBanner: false,
            // themeMode: ThemeMode.dark,
            // darkTheme: ThemeData(
            //   floatingActionButtonTheme:
            //       FloatingActionButtonThemeData(backgroundColor: Colors.red),
            // ),
            theme: LightTheme,
            darkTheme: DarkTheme,
            themeMode: ThemeMode.light,
            // Provider.of<ThemeProvider>(context).themeMode,
            // ThemeData(
            //     colorSchemeSeed: Colors.grey,
            //     appBarTheme: AppBarTheme(
            //       backgroundColor: Colors.blue,
            //       centerTitle: true,
            //       titleTextStyle:
            //           TextStyle(color: Colors.amberAccent, fontSize: 25),
            //     ),
            //     floatingActionButtonTheme:
            //         FloatingActionButtonThemeData(backgroundColor: Colors.amber)),
            routes: app_routes,
          );
        },
        // child: MaterialApp(
        //   // debugShowCheckedModeBanner: false,
        //   // themeMode: ThemeMode.dark,
        //   // darkTheme: ThemeData(
        //   //   floatingActionButtonTheme:
        //   //       FloatingActionButtonThemeData(backgroundColor: Colors.red),
        //   // ),
        //   theme: LightTheme,
        //   darkTheme: DarkTheme,
        //   themeMode: Provider.of<ThemeProvider>(context).themeMode,
        //   // ThemeData(
        //   //     colorSchemeSeed: Colors.grey,
        //   //     appBarTheme: AppBarTheme(
        //   //       backgroundColor: Colors.blue,
        //   //       centerTitle: true,
        //   //       titleTextStyle:
        //   //           TextStyle(color: Colors.amberAccent, fontSize: 25),
        //   //     ),
        //   //     floatingActionButtonTheme:
        //   //         FloatingActionButtonThemeData(backgroundColor: Colors.amber)),
        //   routes: app_routes,
        // ),
      ),
    ),
  );
}
