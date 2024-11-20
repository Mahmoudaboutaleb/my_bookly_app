import 'package:flutter/material.dart';

class CustomTextFieldSearchPage extends StatelessWidget {
  const CustomTextFieldSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0x832E2158),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide()),
          hintText: 'Search',
          suffixIcon:
              IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ),
      ),
    );
  }
}
