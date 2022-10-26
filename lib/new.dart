import 'package:flutter/material.dart';

class New extends StatelessWidget {
  final String habitName;
  final bool habitCompleted;

  const New({super.key,
   required this.habitName, 
   required this.habitCompleted,
   final Function(bool?)? onChanged,
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => ,
        // ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged:((onChanged) {
                    
                  })
                ),
                const Text('Morning Run'),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
