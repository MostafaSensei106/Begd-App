import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.2,
      height: 0,
      indent: 0,
      endIndent: 0,
      color: Theme.of(context).colorScheme.outline,
    );
  }
}
