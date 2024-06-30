import 'package:flutter/material.dart';

class baseWidget extends StatelessWidget {
  const baseWidget({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
