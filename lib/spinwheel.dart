import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({
    Key? key,
    required this.url,
    required this.name,
  }) : super(key: key);

  final String url;
  final String name;
  @override
  State<SpinWheel> createState() => _SpinWheelState();
}
class _SpinWheelState extends State<SpinWheel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.name),
          ),
          body: Center(
            child: Lottie.network(widget.url),
          ),
        ),
      ),
    );
  }
}
