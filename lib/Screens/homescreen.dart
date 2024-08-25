import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/components/reusableContainer.dart';
import 'package:login/components/cardChild.dart';
import 'package:login/constants.dart';

SingleChildScrollView homescreen() {
  return SingleChildScrollView(
    child: SizedBox(
      height: 910,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 25,
                left: 15,
              ),
              child: const Text(
                'MOBILE',
                style: kmobileStyle,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 760,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '14.jpg',
                            name: 'Iphone 14 Pro Max',
                            price: '700 USD',
                            status: 'New',
                            rate: '9/10',
                            description: '14 PRO MAX Description'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '13.jpg',
                            name: 'Iphone 13 Pro Max',
                            price: '700 USD',
                            status: 'New',
                            rate: '9/10',
                            description: '13 PRO MAX Description'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '12.jpg',
                            name: 'Iphone 12 Pro Max',
                            price: '700 USD',
                            status: 'New',
                            rate: '9/10',
                            description: '12 PRO MAX Description'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '11.jpg',
                            name: 'Iphone 11 Pro Max',
                            price: '700 USD',
                            status: 'New',
                            rate: '9/10',
                            description: '11 PRO MAX Description'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10, left: 15),
              child: const Text('MOTORCYCLES', style: kmobileStyle),
            ),
          ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 760,
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '1.jpg',
                            name: 'Aston Martin AM001',
                            price: '120K USD',
                            status: 'New',
                            rate: '9/10',
                            description: 'AM001'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '2.jpg',
                            name: 'Royal Meteor 650',
                            price: '100K USD',
                            status: 'New',
                            rate: '9/10',
                            description: 'RM650'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '3.jpg',
                            name: 'BMW 1250 RS',
                            price: '15K USD',
                            status: 'New',
                            rate: '9/10',
                            description: '1250 RS'),
                      ),
                    ),
                    Expanded(
                      child: ReusableContainer(
                        defcol: const Color(0XccFFFFFF),
                        containerChild: card(
                            image: '4.jpg',
                            name: 'Suzuki 800 DE',
                            price: '13K USD',
                            status: 'New',
                            rate: '9/10',
                            description: '800 DE'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
