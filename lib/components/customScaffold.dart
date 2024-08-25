// ignore_for_file: file_names, camel_case_types

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class customScaffold extends StatefulWidget {
  final Widget childd;

  const customScaffold({super.key, required this.childd});

  @override
  State<customScaffold> createState() => _customScaffoldState();
}

class _customScaffoldState extends State<customScaffold> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const RiveAnimation.asset('assets/background.riv'),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 20),
                child: const SizedBox(),
              ),
            ),
            SafeArea(child: widget.childd),
          ],
        ),
      ),
    );
  }
}
