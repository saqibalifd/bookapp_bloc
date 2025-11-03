import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
import 'package:bookapp/view/favourite/widgets/place_order_button_widget.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;
    final String imageUrl = 'https://picsum.photos/400/300';

    return FloatingColorComponent(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          forceMaterialTransparency: true,
          title: Text(loc.favourite),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * .01,
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                leading: SizedBox(
                  width: context.mediaQueryWidth * .23,
                  child: imageUrl.simpleNetworkImage(borderRadius: 8),
                ),
                title: Text('Catcher in the Rye'),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.mediaQueryWidth * .01,
                          ),
                          child: SizedBox(
                            width: context.mediaQueryWidth * .17,
                            child: Text(
                              'Saqibdsaljfklajlajlfasj Ali',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Icon(
                          AppIcons.tick,
                          size: 10,
                          color: theme.colorScheme.outlineVariant,
                        ),
                      ],
                    ),
                    Text('june 9, 2025', overflow: TextOverflow.ellipsis),
                  ],
                ),
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.mediaQueryWidth * .05,
          ),
          child: PlaceOrderButtonWidget(),
        ),
      ),
    );
  }
}
