import 'package:flutter/material.dart';

import 'chat_tile.dart';
import 'home_drawer.dart';

class BaseWidget extends StatefulWidget {
  final AnimationController controller;

  const BaseWidget(this.controller, {super.key});

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  AnimationController get animController => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          controller: animController,
          isDarkMode: false,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        centerTitle: true,
        title: const Text("Mahmoud Azab"),
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => const ChatTile(),
        separatorBuilder: (_, i) => const Divider(
          height: 1,
          indent: 70,
        ),
        itemCount: 20,
      ),
    );
  }
}
