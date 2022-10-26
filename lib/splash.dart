import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('TEEJAY'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
          ),
          body: Builder(builder: (context) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      tabs: const [
                        Tab(text: 'Chats'),
                        Tab(text: 'Status'),
                        Tab(text: 'Calls'),
                        Tab(text: 'Settings'),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: TabBarView(
                    children: [
                      Tab(text: 'Chats'),
                      Tab(text: 'Status'),
                      Tab(text: 'Calls'),
                      Tab(text: 'Settings'),
                    ],
                  )),
                ],
              ),
            );
          })),
    );
  }
}
