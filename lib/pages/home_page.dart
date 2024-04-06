import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/components/custom_drawer.dart';
import 'package:flutter_provider_demo/components/custom_sliver_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                const CustomSliverAppBar(
                  title: Text('title'),
                  child: Column(
                    children: [
                      Text("lool"),
                      
                      ],
                  ),
                )
              ],
          body: Container(
            color: Colors.deepPurple,
          )),
    );
  }
}
