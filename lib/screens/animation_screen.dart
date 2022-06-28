import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card screen'),
      ),
      body: const Center(
        child: Animation(),
      ),
    );
  }
}

class Animation extends StatefulWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  _Animation createState() => _Animation();
}

class _Animation extends State<Animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.network(
              'https://assets10.lottiefiles.com/private_files/lf30_fjln45y5.json')),
    );
  }
}
