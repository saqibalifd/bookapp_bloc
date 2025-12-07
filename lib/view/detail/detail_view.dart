import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/models/books/booksModel.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/detail/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final BookData bookData;
  const DetailView({super.key, required this.bookData});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;
    print(bookData);
    return FloatingColorComponent(
      child: Scaffold(
        appBar: AppBar(forceMaterialTransparency: true),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * .05,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DetailImageTitleAuthorWidget(
                  image: bookData.thumbnail,
                  bookName: bookData.bookName,
                  author: bookData.authorName,
                ),
                20.height,
                Text(
                  loc.aboutTheAuthor,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                5.height,
                Text(bookData.aboutEditor, style: theme.textTheme.bodyLarge),
                10.height,
                Text(
                  loc.overview,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                5.height,
                Text(bookData.overview, style: theme.textTheme.bodyLarge),
              ],
            ),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * .05,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [DetailPreviewButton(), DetailFavouriteButton()],
          ),
        ),
      ),
    );
  }
}
