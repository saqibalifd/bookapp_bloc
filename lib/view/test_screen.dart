import 'package:bookapp/bloc/user/user_bloc.dart';
import 'package:bookapp/config/component/loading_widget.dart';
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
  late UserBloc _userBloc;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc(userApiRepository: getIt());
    _userBloc.add(FetchUser());
  }

  @override
  void dispose() {
    super.dispose();
    _userBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ITS Testing Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () async {}, icon: Icon(Icons.refresh)),
        ],
      ),
      body: BlocProvider(
        create: (_) => _userBloc,
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            print('*********');
            print(state.user!.data);

            switch (state.user!.status) {
              case Status.loading:
                return const Center(child: LoadingWidget());

              case Status.error:
                return Center(child: Text(state.user!.message ?? "Error"));

              case Status.completed:
                // final user = state.user!.data!.user!;

                if (state.user!.data == null) {
                  return const Center(child: Text("User Not found"));
                }

                return Center(
                  child: ListTile(
                    // leading: CircleAvatar(
                    //   backgroundImage: NetworkImage(user.profileImage ?? ''),
                    // ),
                    title: Text(
                      textAlign: TextAlign.center,
                      state.user?.data?.user?.name.toString() ?? 'data is null',
                    ),
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
