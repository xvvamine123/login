// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color defcol;
  final Widget containerChild;

  const ReusableContainer(
      {super.key, required this.defcol, required this.containerChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: defcol,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(15),
      child: containerChild,
    );
  }
}
