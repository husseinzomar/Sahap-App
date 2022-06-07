import 'package:flutter/material.dart';

Widget menuScreen() => Padding(
      padding: EdgeInsetsDirectional.only(start: 20.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
