import 'package:change_thame/pages/home/widgets/base_widget.dart';
import 'package:change_thame/pages/home/widgets/overlay_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/circular_reveal_animation/circular_reveal_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BaseWidget(animationController),
          CircularRevealAnimation(
            animation: animation,
            centerOffset: const Offset(275, 65),
            child: OverlayWidget(animationController),
          ),
        ],
      ),
    );
  }
}
