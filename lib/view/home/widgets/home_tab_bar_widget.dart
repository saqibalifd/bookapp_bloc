import 'package:bookapp/config/routes/route_names.dart';
import 'package:bookapp/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';

class HomeTabBarWidget extends StatefulWidget {
  final List<String> categoriesList;
  final List<Map<String, dynamic>> bookList;
  const HomeTabBarWidget({
    super.key,
    required this.categoriesList,
    required this.bookList,
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
                itemCount: widget.bookList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.mediaQueryWidth * .03,
                      vertical: context.mediaQueryHeight * .027,
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, RoutesName.detail),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(20),
                            child: Image.network(
                              widget.bookList[index]['thumbnail'],
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
                              widget.bookList[index]['name'],
                              style: theme.textTheme.titleSmall!.copyWith(
                                color: theme.colorScheme.onSurface,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            overflow: TextOverflow.ellipsis,
                            widget.bookList[index]['author'],
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
  }
}
