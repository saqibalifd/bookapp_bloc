import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
import 'package:flutter/material.dart';

class DetailImageTitleAuthorWidget extends StatelessWidget {
  final String image;
  final String bookName;
  final String author;
  const DetailImageTitleAuthorWidget({
    super.key,
    required this.image,
    required this.bookName,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String imageUrl = 'https://picsum.photos/400/300';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: imageUrl.simpleNetworkImage(
              height: context.mediaQueryHeight * .34,
              width: context.mediaQueryHeight * .27,
            ),
          ),
        ),
        10.height,
        Center(
          child: Text(
            bookName,
            style: theme.textTheme.titleMedium!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        5.height,
        Center(child: Text(author, style: theme.textTheme.bodyLarge)),
      ],
    );
  }
}
