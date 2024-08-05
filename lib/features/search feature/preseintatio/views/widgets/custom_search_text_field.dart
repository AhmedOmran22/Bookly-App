import 'package:bookly/features/search%20feature/preseintatio/manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextDirectionTextField extends StatefulWidget {
  const TextDirectionTextField({super.key});

  @override
  TextDirectionTextFieldState createState() => TextDirectionTextFieldState();
}

class TextDirectionTextFieldState extends State<TextDirectionTextField> {
  TextDirection _textDirection = TextDirection.ltr;

  void _handleChange(String text) {
    setState(() {
      _textDirection = _isArabic(text) ? TextDirection.rtl : TextDirection.ltr;
    });
  }

  bool _isArabic(String text) {
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: _handleChange,
      onSubmitted: (value) {
        BlocProvider.of<SearchCubit>(context).fecthSearchBooks(value);
      },
      textDirection: _textDirection,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        hintText: 'Search for a book',
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 12),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.magnifyingGlass),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
