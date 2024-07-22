// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySegmentedButtons extends StatefulWidget {
  const MySegmentedButtons({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  State<MySegmentedButtons> createState() => _MySegmentedButtonsState();
}

class _MySegmentedButtonsState extends State<MySegmentedButtons> {
  Set<String> selected = {"Open Chats"};

  void updateSelected(Set<String> newSelection) {
    setState(() {
      selected = newSelection;

      if (selected.contains("Open Chats")) {
        widget.pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else if (selected.contains("Chats Request")) {
        widget.pageController.animateToPage(
          1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SegmentedButton(
      segments: const [
        ButtonSegment(
          value: "Open Chats",
          label: Text("Open Chats"),
        ),
        ButtonSegment(
          value: "Chats Request",
          label: Text("Chats request"),
        ),
      ],
      selected: selected,
      onSelectionChanged: updateSelected,
      style: ButtonStyle(
        side: MaterialStateProperty.resolveWith((states) {
          // Remove border
          if (states.contains(MaterialState.selected)) {
            return BorderSide.none;
          }
          return BorderSide.none;
        }),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          // Change background color when selected
          if (states.contains(MaterialState.selected)) {
            return CupertinoColors.systemPink; // Color when selected
          }
        }),
        shape: MaterialStateProperty.resolveWith(
          (states) {
            // Set border radius
            return RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(16), // Adjust the radius as needed
            );
          },
        ),
      ),
    );
  }
}
