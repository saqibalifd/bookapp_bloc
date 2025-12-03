import 'package:bookapp/bloc/book/book_bloc.dart';
import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/dependencies_injection/locator.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/home/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late BookBloc _bookBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bookBloc = BookBloc(booksApiRepository: getIt());
    _bookBloc.add(BooksFetch());
  }

  @override
  void dispose() {
    _bookBloc.close();
    super.dispose();
  }

  final List<String> categoriesList = [
    'Novel',
    'Stories',
    'School',
    'Novel',
    'Stories',
    'School',
  ];

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
                    child: HomeTabBarWidget(
                      categoriesList: categoriesList,
                      // bookList: bookList,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
