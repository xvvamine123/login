// ignore: file_names
// ignore_for_file: must_be_immutable, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/constants.dart';

// ignore: camel_case_types
class card extends StatelessWidget {
  final String image;
  String name;
  String price;
  String status;
  String rate;
  String description;
  double iconsize = 20;
  Color iconColor = kInactiveIconColor;
  card(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.status,
      required this.rate,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/$image'), fit: BoxFit.fill),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: iconColor,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.heart,
                      color: Colors.white,
                      size: iconsize,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Flexible(
            flex: 2,
            child: Text(
              name,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              price,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0x80808080),
                    ),
                    child: Center(child: Text(status)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0x80808080),
                    ),
                    child: Center(child: Text(rate)),
                  ),
                ),
                Expanded(flex: 2, child: Container())
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                description,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
