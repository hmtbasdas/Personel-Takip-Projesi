import 'package:flutter/material.dart';

//import '../../init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  BuildContext? mContext;

  double dynamicHeight(BuildContext context, double value);
  double dynamicWidth(BuildContext context, double value);

  //NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
