import 'package:cognme/features/smart_watch/presentation/widget/switch_button.dart';
import 'package:flutter/material.dart';

class  ListTileButton extends StatelessWidget {
  final String label;
  final Icon leadingIcon;
  final SwitchButton switchButton;
  const ListTileButton({
    super.key,
    required this.label,
    required this.leadingIcon, required this.switchButton,
   
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: Text(label),
      trailing: IconButton(icon: switchButton, onPressed: () {},),
    );
  }
}
