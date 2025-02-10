import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly_app/features/home/presentation/manager/search_book_cubit/search_book_cubit.dart';

class CustomTextFieldSearchPage extends StatefulWidget {
  const CustomTextFieldSearchPage({super.key});

  @override
  State<CustomTextFieldSearchPage> createState() =>
      _CustomTextFieldSearchPageState();
}

class _CustomTextFieldSearchPageState extends State<CustomTextFieldSearchPage> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: textEditingController,
        onSubmitted: (value) {
          final query = value.trim();
          if (query.isNotEmpty) {
            BlocProvider.of<SearchBookCubit>(context).fetchSerchBook(query);
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0x832E2158),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide()),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {
                final query = textEditingController.text.trim();
                if (query.isNotEmpty) {
                  BlocProvider.of<SearchBookCubit>(context)
                      .fetchSerchBook(query);
                }
              },
              icon: Icon(Icons.search_rounded)),
        ),
      ),
    );
  }
}
