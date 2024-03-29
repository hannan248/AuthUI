import 'package:flutter/material.dart';

import '../../pages/home_page.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget _child;

  FadePageRoute(this._child)
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext _context,
              Animation<double> animation,
              Animation<double> secondAnimation,
              Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext _context, animation, secondAnimation) {
            return _child;
          },
        );
}
