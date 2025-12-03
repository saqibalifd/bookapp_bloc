import 'package:bookapp/bloc/book/book_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
import 'package:bookapp/data/network/network_api_service.dart';
import 'package:bookapp/data/response/status.dart';
import 'package:bookapp/dependencies_injection/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late BookBloc _bookBloc;

  @override
  void initState() {
    super.initState();
    _bookBloc = BookBloc(booksApiRepository: getIt());
    _bookBloc.add(FetchBooksEvent()); // <-- call API here
  }

  @override
  void dispose() {
    _bookBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITS Testing Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () async {
              NetworkApiService networkApiService = NetworkApiService();
              final response = await networkApiService.getApi(
                'https://675c38dc-686a-4ae9-86a0-3fdeeec97f93.mock.pstmn.io/books',
              );

              print(response);
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => _bookBloc,
        child: BlocBuilder<BookBloc, BookState>(
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

                return ListView.builder(
                  itemCount: books.length,
                  itemBuilder: (_, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(books[i].thumbnail),
                    ),
                    title: Text(books[i].bookName),
                  ),
                );

              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
