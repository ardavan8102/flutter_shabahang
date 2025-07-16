import 'package:flutter/material.dart';
import 'package:shabahang/common/helpers/is_dark_mode.dart';

class AppBarReturnArrowButton extends StatelessWidget {
  const AppBarReturnArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 20, 0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context
            );
          }, 
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: context.isDarkMode ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 18,
              color: context.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
      
      ),
    );
  }
}