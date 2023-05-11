import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final bool isDarkMode;

  const ChatTile({super.key, this.isDarkMode = false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.red,
      ),
      title: Text(
        "Ahmed",
        style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      ),
      subtitle: Text(
        "Hey there",
        style: TextStyle(
            fontSize: 12, color: isDarkMode ? Colors.white : Colors.black),
      ),
    );
  }
}
