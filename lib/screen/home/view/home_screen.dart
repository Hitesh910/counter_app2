import 'package:counter_app2/screen/home/provider/home_provider.dart';
import 'package:counter_app2/utils/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("System"),
                  onTap: () {
                    context.read<ThemeChange>().changeTheme(ThemeMode.system);
                  },
                ),
                PopupMenuItem(
                  child: Text("Light"),
                  onTap: () {
                    context.read<ThemeChange>().changeTheme(ThemeMode.light);
                  },
                ),
                PopupMenuItem(
                  child: Text("Dark"),
                  onTap: () {
                    context.read<ThemeChange>().changeTheme(ThemeMode.dark);
                  },
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Consumer<HomeProvider>(
            builder: (context, value, child) => Text(
              '${value.i}',
              style: const TextStyle(fontSize: 35),
            ),
            // child: Text(
            //   '$i',
            //   style: const TextStyle(fontSize: 35),
            // ),
          )),
          FloatingActionButton(onPressed: () {
            
          },child: Text("save"),)
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().increment();
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().decrement();
              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().double();
              });
            },
            child: const Icon(Icons.two_k_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().triple();
              });
            },
            child: const Icon(Icons.three_k),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().four();
              });
            },
            child: const Icon(Icons.four_k),
          ),
        ],
      ),
    );
  }
}
