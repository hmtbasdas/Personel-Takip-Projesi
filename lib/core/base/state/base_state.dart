import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dynamicHeight(double value) =>
      MediaQuery.of(context).size.height * value;
  double dyanmicWidth(double value) =>
      MediaQuery.of(context).size.width * value;
}