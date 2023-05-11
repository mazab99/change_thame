import 'package:flutter/material.dart';
import 'chat_tile.dart';
import 'home_drawer.dart';

class OverlayWidget extends StatefulWidget {
  final AnimationController controller;

  const OverlayWidget(this.controller, {super.key});

  @override
  _OverlayWidgetState createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  AnimationController get _animController => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: HomeDrawer(
          isDarkMode: true,
          controller: _animController,
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff212D3B),
        elevation: 1,
        centerTitle: true,
        title: const Text("Mahmoud Azab"),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      backgroundColor: const Color(0xff1D2733),
      body: ListView.separated(
        itemBuilder: (_, i) => const ChatTile(isDarkMode: true),
        separatorBuilder: (_, i) => const Divider(
          height: 1,
          indent: 70,
        ),
        itemCount: 20,
      ),
    );
  }
}
