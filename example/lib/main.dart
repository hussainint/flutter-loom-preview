import 'package:flutter/material.dart';
import 'package:loom_preview/loom_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoomExample(),
    );
  }
}

class LoomExample extends StatelessWidget {
  const LoomExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoomVideoPreview(
        loomLink: 'https://www.loom.com/share/8ff11b1edd6b490b93af7d2eb6f91862',
        loadingWidget: CircularProgressIndicator(),
        previewHeight: 250,
        previewWidth: 250,
      ),
    );
  }
}
