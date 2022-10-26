import 'package:flutter/material.dart';

class ViewMe extends StatefulWidget {
  const ViewMe({super.key});

  @override
  State<ViewMe> createState() => _ViewMeState();
}

class _ViewMeState extends State<ViewMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
        onTap: (() {
          Navigator.pop(context);
        }),
        child: const Icon(Icons.arrow_back_ios_new),
      )),
      body: const Center(
        child: Text('TEEJAY'),
      ),
    );
  }
}
