import 'package:booky_app/Futures/home/Data/model/Book_Model/book_model.dart';
import 'package:booky_app/Futures/home/presentation/manger/SimilarBooksCubit/similar_book_cubit.dart';
import 'package:booky_app/Futures/home/presentation/view/widget/BookDetailsBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
  final BookModel bookModel;
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(
      context,
    ).fetchSimilarBook(categores: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsBody(book: widget.bookModel)),
    );
  }
}
