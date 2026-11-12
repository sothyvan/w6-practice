import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.

enum ButtonType{
  primary,
  secondary,
  disabled
}

enum IconPosition{
  left,
  right
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom buttons'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            CustomButton(
              label: 'Submit',
              icon: Icons.check,
            ),
            SizedBox(height: 18),
            CustomButton(
              label: 'Time',
              icon: Icons.access_time,
              iconPosition: IconPosition.right,
              type: ButtonType.secondary,
            ),
            SizedBox(height: 18),
            CustomButton(
              label: 'Account',
              icon: Icons.account_tree_sharp,
              iconPosition: IconPosition.right,
              type: ButtonType.disabled,
            ),
          ],
        ),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget{
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {

    final background = switch (type){
      ButtonType.primary => Colors.blue,
      ButtonType.secondary => Colors.green,
      ButtonType.disabled => Colors.grey
    };

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPosition == IconPosition.left) Icon(icon),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(label),
          ),
          if (iconPosition == IconPosition.right) Icon(icon),
        ],
      ),
    );
  }
}
