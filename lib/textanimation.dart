import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Textanimation extends StatelessWidget {
  const Textanimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
          period: const Duration(seconds: 2),
          baseColor: Colors.purple,
          highlightColor: Colors.red,
          child: const Text("Text animtion"), ),
    );
  }
}
