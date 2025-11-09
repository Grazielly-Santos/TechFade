import 'package:flutter/material.dart';

class MobileScaffold extends StatelessWidget {
  final Widget child;
  const MobileScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 430),
        child: child,
      ),
    );
  }
}
