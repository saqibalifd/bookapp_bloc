import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/detail/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;

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
                  image:
                      'https://images-na.ssl-images-amazon.com/images/I/81eB+7+CkUL.jpg',
                  bookName: 'Chejal Svwthe',
                  author: 'William Catehe',
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
                Text(
                  'J.D. Salinger was an American writer, best known for his 1951 novel The Catcher in the Rye. Before its publi cation, Salinger published several short stories in Story magazine',
                  style: theme.textTheme.bodyLarge,
                ),
                10.height,
                Text(
                  loc.overview,
                  style: theme.textTheme.titleMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                5.height,
                Text(
                  'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945–1946 and as a novel in 1951. It was originally intended for adu lts but is often read by adolescents for its theme of angst, alienation and as a critique......',
                  style: theme.textTheme.bodyLarge,
                ),
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
