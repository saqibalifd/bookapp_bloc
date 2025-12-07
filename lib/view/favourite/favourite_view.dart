import 'package:bookapp/bloc/favourite/favourite_bloc.dart';
import 'package:bookapp/config/component/floating_color_component.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/config/icon/app_icons.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/dependencies_injection/dependencies_injection.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
import 'package:bookapp/view/favourite/widgets/place_order_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  late FavouriteBloc _favouriteBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _favouriteBloc = FavouriteBloc(favouriteApiRepository: getIt());
    _favouriteBloc.add(FetchFavouriteBooks());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;

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
          child: BlocProvider(
            create: (context) => _favouriteBloc,
            child: BlocBuilder<FavouriteBloc, FavouriteState>(
              builder: (context, state) {
                switch (state.favBookList!.status) {
                  case Status.loading:
                    return const Center(child: LoadingWidget());
                  case Status.error:
                    return Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        state.favBookList?.message.toString() ?? "Error",
                      ),
                    );
                  case Status.completed:
                    final data = state.favBookList?.data?.data;
                    if (data == null) {
                      return Center(child: Text(loc.categoriesListIsEmpty));
                    }
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: SizedBox(
                            width: context.mediaQueryWidth * .23,
                            child: data[index].thumbnail.simpleNetworkImage(
                              borderRadius: 8,
                            ),
                          ),
                          title: Text(data[index].name),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage: NetworkImage(
                                      data[index].uploaderImage,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.mediaQueryWidth * .01,
                                    ),
                                    child: SizedBox(
                                      width: context.mediaQueryWidth * .17,
                                      child: Text(
                                        data[index].uploadedByName,
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
                              // Text(
                              //   data[index].date,
                              //   overflow: TextOverflow.ellipsis,
                              // ),
                            ],
                          ),
                        );
                      },
                    );
                }
              },
            ),
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
