import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/book%20feature/presintation/manager/simillar%20list%20cubit/simiilar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimiilarBooksListView extends StatelessWidget {
  const SimiilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: width < 600 ? hight * .19 : width * .33,
      child: BlocBuilder<SimiilarBooksCubit, SimiilarBooksState>(
        builder: (context, state) {
          if (state is SimiilarBooksSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const CustomBookImage(
                  imageUrl: AssetsData.randomUrlPhoto,
                  widthRatio: 1.7,
                );
              },
            );
          } else if (state is SimiilarBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const LoadingIndicator();
          }
        },
      ),
    );
  }
}
