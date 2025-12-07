import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/models/books/booksModel.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class PreviewView extends StatelessWidget {
  final BookData bookData;
  const PreviewView({super.key, required this.bookData});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingColorComponent(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: context.mediaQueryHeight * .11,
          centerTitle: true,
          forceMaterialTransparency: true,
          title: Column(
            children: [
              30.height,
              Text(
                bookData.bookName,
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                  fontSize: 18,
                ),
              ),
              Text(bookData.bookName, style: theme.textTheme.bodyLarge),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: context.mediaQueryWidth * .05,
            right: context.mediaQueryWidth * .05,

            top: context.mediaQueryHeight * .03,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Text(bookData.overview, style: theme.textTheme.bodyMedium),
          ),
        ),
      ),
    );
  }
}
