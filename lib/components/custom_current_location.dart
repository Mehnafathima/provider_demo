import 'package:flutter/material.dart';

class CustomCurrentLocation extends StatelessWidget {
  const CustomCurrentLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver here",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary
          ),),
          Row(
            children: [
              Text("kaloor, Ernakulam",
              style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded)
            ],
          )
      
        ],
      ),
    );
  }
}