
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MainScreen(),
        ),
      ),
    ),
  );
}

// PART 3: Manage multiple buttons
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        SelectableButton(),
        SizedBox(height: 8),

        SelectableButton(),
        SizedBox(height: 8),

        SelectableButton(),
        SizedBox(height: 8),

        SelectableButton(),
      ],
    );
  }
}

// PART 2: Create a StatefulWidget
class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() {
    return _SelectableButtonState();
  }
}

class _SelectableButtonState extends State<SelectableButton> {

  // Manage selected condition
  bool isSelected = false;

  // Getter for button text
  String get buttonText {
    return isSelected ? 'Selected' : 'Not selected';
  }

  // Getter for text color
  Color get textColor {
    return isSelected ? Colors.white : Colors.black;
  }

  // Getter for background color
  Color get backgroundColor {
    return isSelected ? Colors.blue.shade500 : Colors.blue.shade50;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },

        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          shape: const StadiumBorder(),
          elevation: 2,
        ),

        child: Center(
          child: Text(buttonText),
        ),
      ),
    );
  }
}
