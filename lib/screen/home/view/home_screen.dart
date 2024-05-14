import 'package:counter_app2/screen/home/provider/home_provider.dart';
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
          ))
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
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().decrement();
              });
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().double();
              });
            },
            child: const Icon(Icons.two_k_outlined),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().triple();
              });
            },
            child: const Icon(Icons.three_k),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                context.read<HomeProvider>().four();
              });
            },
            child: const Icon(Icons.three_k),
          ),
        ],
      ),
    );
  }
}
