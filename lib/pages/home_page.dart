import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("lalalallalalalalalalallalalalal"),
      ),
      drawer: const CustomDrawer(),
    
    );
  }
}