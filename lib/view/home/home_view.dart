import 'package:bookapp/bloc/book/book_bloc.dart';
import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/data/response/response.dart';
import 'package:bookapp/dependencies_injection/locator.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/models/categories/categoriesModel.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/home/widgets/widgets.dart';
import 'package:bookapp/bloc/categories/catogories_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late BookBloc _bookBloc;
  late CatogoriesBloc _catogoriesBloc;

  @override
  void initState() {
    super.initState();
    _bookBloc = BookBloc(booksApiRepository: getIt());
    _catogoriesBloc = CatogoriesBloc(categoriesApiRepository: getIt());
    _bookBloc.add(BooksFetch());
    _catogoriesBloc.add(FetchCategories());
  }

  @override
  void dispose() {
    _bookBloc.close();
    _catogoriesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = AppLocalizations.of(context)!;

    return FloatingColorComponent(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: const HomeAppbarWidget(),
        ),
        body: BlocProvider(
          create: (context) => _catogoriesBloc,
          child: BlocProvider(
            create: (context) => _bookBloc,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.mediaQueryWidth * .05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.wellcomeBackBunny,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      loc.whatDoYouWantToRead,
                      style: theme.textTheme.headlineLarge,
                    ),
                    20.height,
                    HomeSearchFieldWidget(),
                    20.height,
                    Expanded(
                      child: BlocBuilder<CatogoriesBloc, CategoriesState>(
                        builder: (context, state) {
                          switch (state.categoriesList!.status) {
                            case Status.loading:
                              return const Center(child: LoadingWidget());
                            case Status.error:
                              return Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  state.categoriesList?.message.toString() ??
                                      "Error",
                                ),
                              );
                            case Status.completed:
                              final List<Category> categories =
                                  state.categoriesList!.data!.categories;

                              if (categories.isEmpty) {
                                return Center(
                                  child: Text(loc.categoriesListIsEmpty),
                                );
                              }
                              return HomeTabBarWidget(
                                categoriesList: categories,
                              );

                            default:
                              return Center(
                                child: Text(loc.somethingWentWrong),
                              );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
