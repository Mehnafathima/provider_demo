import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const CustomSliverAppBar(
      {super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [IconButton(onPressed: () {},
       icon: const Icon(Icons.shopping_cart))
       ],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text("Sunset Diner"),
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
