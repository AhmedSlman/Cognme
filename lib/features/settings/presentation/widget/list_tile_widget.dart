import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String label;
  final Icon leadingIcon;
  final Icon trailingIcon;
  const ListTileWidget({
    super.key,
    required this.label,
    required this.leadingIcon,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: Text(label),
      trailing: trailingIcon,
    );
  }
}
