import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Route {
  Route._internal();

  static Widget createPageProvider<T extends ChangeNotifier>({
    required T Function(BuildContext context) provider,
    required Widget child,
  }) {
    return ChangeNotifierProvider<T>(
      create: (context) => provider(context),
      lazy: true,
      child: child,
    );
  }
}