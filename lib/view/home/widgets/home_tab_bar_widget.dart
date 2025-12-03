import 'package:bookapp/bloc/book/book_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabBarWidget extends StatefulWidget {
  final List<String> categoriesList;
  // final List<Map<String, dynamic>> bookList;
  const HomeTabBarWidget({
    super.key,
    required this.categoriesList,
    // required this.bookList,
  });

  @override
  State<HomeTabBarWidget> createState() => _HomeTabBarWidgetState();
}

class _HomeTabBarWidgetState extends State<HomeTabBarWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.categoriesList.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        switch (state.booksList!.status) {
          case Status.loading:
            return const Center(child: LoadingWidget());

          case Status.error:
            return Center(child: Text(state.booksList!.message ?? "Error"));

          case Status.completed:
            final books = state.booksList!.data!.data;

            if (books.isEmpty) {
              return const Center(child: Text("Books list is empty"));
            }

            return Column(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: widget.categoriesList
                      .map((category) => Tab(text: category))
                      .toList(),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: widget.categoriesList.map((category) {
                      final aspectRatio =
                          (context.mediaQueryWidth / 2.4) /
                          (context.mediaQueryHeight * 0.40);

                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: aspectRatio,
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.mediaQueryWidth * .03,
                              vertical: context.mediaQueryHeight * .027,
                            ),
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                context,
                                RoutesName.detail,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                    child: Image.network(
                                      books[index].thumbnail,
                                      fit: BoxFit.cover,
                                      height: context.mediaQueryHeight * .3,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: context.mediaQueryHeight * .01,
                                    ),
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      books[index].bookName,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                            color: theme.colorScheme.onSurface,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    overflow: TextOverflow.ellipsis,
                                    books[index].authorName,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          default:
            return const SizedBox();
        }
      },
    );
    ///////////////////////
    // BlocBuilder<BookBloc, BookState>(builder: (context, state) {});
  }
}
