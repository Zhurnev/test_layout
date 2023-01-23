import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/logic/cubits/users_cubit.dart';
import 'package:test_layout/logic/cubits/users_state.dart';
import 'package:test_layout/presentation/widgets/user_card.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({super.key, required this.title});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () => Navigator.of(context).pushNamed("/saved"),
          ),
        ],
      ),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Draggable(
                feedback: UserCard(user: state.currentUsers.first),
                onDragEnd: (details) {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    BlocProvider.of<UsersCubit>(context).saveUser();
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    BlocProvider.of<UsersCubit>(context).loadUser();
                  }
                },
                childWhenDragging: UserCard(user: state.currentUsers[1]),
                child: UserCard(user: state.currentUsers.first));
          }
        },
      ),
    );
  }
}
