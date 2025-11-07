import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool isIced = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          _buildToggleSelection("Hot", !isIced),
          _buildToggleSelection("Iced", isIced),
        ],
      ),
    );
  }

  Widget _buildToggleSelection(label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isIced = label == "Iced";
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.grey[400],
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
