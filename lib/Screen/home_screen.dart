import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Random random = Random();
  final List<String> emojilist = [
    '😀',
    '😃',
    '😄',
    '😁',
    '😆',
    '😅',
    '😂',
    '🤣',
    '😊',
    '😇',
    '🙂',
    '🙃',
    '😉',
    '😌',
    '😍',
    '🥰',
    '😘',
    '😗',
    '😙',
    '😚',
    '😋',
    '😛',
    '😝',
    '😜',
    '🤪',
  ];

  List<String> randomemoji = [];

  void generateEmoji() {
    setState(() {
      randomemoji = List.generate(
          1, (index) => emojilist[random.nextInt(emojilist.length)]);
    });
  }

  @override
  void initState() {
    generateEmoji();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: randomemoji
                  .map((emojilist) => Text(
                        emojilist,
                        style: const TextStyle(fontSize: 80),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  generateEmoji();
                },
                child: const Text('Generate Emoji')),
          ],
        ),
      ),
    );
  }
}
