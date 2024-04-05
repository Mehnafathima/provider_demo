
import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/components/custom_drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
            color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          CustomDrawerTile(text: "H O M E",
           icon: Icons.home,
           onTap: (){},
           ),
           CustomDrawerTile(text: "S E T T I N G S",
           icon: Icons.home,
           onTap: (){},
           ),
           CustomDrawerTile(text: "L O G O U T",
           icon: Icons.logout,
           onTap: (){},
           ),
        ],
      ),
    );
  }
}
