import 'package:bookapp/bloc/book/book_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/models/books/booksModel.dart';
import 'package:bookapp/models/categories/categoriesModel.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:bookapp/utils/extensions/network_image_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabBarWidget extends StatefulWidget {
  final List<Category> categoriesList;

  const HomeTabBarWidget({super.key, required this.categoriesList});

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
            return Center(
              child: Text(
                textAlign: TextAlign.center,
                state.booksList!.message ?? "Error",
              ),
            );

          case Status.completed:
            final books = state.booksList!.data!.data;

            return Column(
              children: [
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: widget.categoriesList
                      .map((category) => Tab(text: category.name))
                      .toList(),
                ),

                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: widget.categoriesList.map((category) {
                      final filteredBooks = books
                          .where((book) => book.category == category.name)
                          .toList();

                      final aspectRatio =
                          (context.mediaQueryWidth / 2.4) /
                          (context.mediaQueryHeight * 0.40);

                      if (filteredBooks.isEmpty) {
                        return const Center(
                          child: Text("No books in this category"),
                        );
                      }

                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: aspectRatio,
                        ),
                        physics: const BouncingScrollPhysics(),
                        itemCount: filteredBooks.length,
                        itemBuilder: (context, index) {
                          final book = filteredBooks[index];

                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.mediaQueryWidth * .03,
                              vertical: context.mediaQueryHeight * .027,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  RoutesName.detail,
                                  arguments: book,
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: book.thumbnail.simpleNetworkImage(
                                      height: context.mediaQueryHeight * .3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: context.mediaQueryHeight * .01,
                                    ),
                                    child: Text(
                                      book.bookName,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(
                                            color: theme.colorScheme.onSurface,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),

                                  Text(
                                    book.authorName,
                                    overflow: TextOverflow.ellipsis,
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
  }
}
