import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:bookly/features/book%20feature/presintation/manager/simillar%20list%20cubit/simiilar_books_cubit.dart';
import 'package:bookly/features/book%20feature/presintation/view/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimiilarBooksCubit>(context).fetchSimillarBooks(
      category: widget.bookModel.volumeInfo.categories?[0] ?? '',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailesViewBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
