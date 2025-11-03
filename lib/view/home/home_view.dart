import 'package:bookapp/config/component/components.dart';
import 'package:bookapp/l10n/app_localizations.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/view/home/widgets/widgets.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<String> categoriesList = [
    'Novel',
    'Stories',
    'School',
    'Novel',
    'Stories',
    'School',
  ];

  final List<Map<String, dynamic>> bookList = [
    {
      'thumbnail':
          'https://images-na.ssl-images-amazon.com/images/I/81bsw6fnUiL.jpg',
      'name': 'Atomic Habits',
      'author': 'James Clear',
      'aboutAuthor':
          'James Clear is a writer and speaker focused on habits, decision making, and continuous improvement.',
      'overview':
          'A practical guide to building good habits and breaking bad ones through small, consistent changes that compound over time.',
      'price': '15.99',
    },
    {
      'thumbnail':
          'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg',
      'name': 'The Alchemist',
      'author': 'Paulo Coelho',
      'aboutAuthor':
          'Paulo Coelho is a Brazilian lyricist and novelist, best known for his novel *The Alchemist*, which has sold millions of copies worldwide.',
      'overview':
          'A story about Santiago, an Andalusian shepherd, who dreams of finding treasure and learns about the importance of following one’s dreams.',
      'price': '12.49',
    },
    {
      'thumbnail':
          'https://images-na.ssl-images-amazon.com/images/I/81vpsIs58WL.jpg',
      'name': 'Rich Dad Poor Dad',
      'author': 'Robert T. Kiyosaki',
      'aboutAuthor':
          'Robert T. Kiyosaki is an entrepreneur, educator, and investor who is best known for challenging conventional views about money.',
      'overview':
          'A personal finance classic that contrasts the financial philosophies of two fathers—one rich and one poor—and teaches principles for building wealth.',
      'price': '10.99',
    },
    {
      'thumbnail':
          'https://images-na.ssl-images-amazon.com/images/I/81eB+7+CkUL.jpg',
      'name': 'The Subtle Art of Not Giving a F*ck',
      'author': 'Mark Manson',
      'aboutAuthor':
          'Mark Manson is a blogger and bestselling author who writes about self-help, personal development, and life advice with humor and honesty.',
      'overview':
          'A counterintuitive approach to living a better life by focusing on what truly matters and letting go of superficial concerns.',
      'price': '14.29',
    },
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.mediaQueryWidth * .05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(loc.wellcomeBackBunny, style: theme.textTheme.bodyMedium),
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
                    bookList: bookList,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
