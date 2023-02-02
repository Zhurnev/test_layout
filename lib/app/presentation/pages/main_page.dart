import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/app/logic/cubits/users_state.dart';
import 'package:test_layout/app/presentation/pages/error_page.dart';
import 'package:test_layout/app/presentation/widgets/user_card.dart';
import 'package:test_layout/l10n/l10n.dart';
import 'package:test_layout/locator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.mainAppBarTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () => Navigator.of(context).pushNamed('/saved'),
          ),
        ],
      ),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state.isLoading as bool) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.error != null) {
            return const ErrorPage();
          } else {
            return Draggable(
              feedback: UserCard(user: state.currentUsers.first),
              onDragEnd: (details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  locator<UsersCubit>().saveUser();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  locator<UsersCubit>().loadUser();
                }
              },
              childWhenDragging: UserCard(user: state.currentUsers[1]),
              child: UserCard(user: state.currentUsers.first),
            );
          }
        },
      ),
    );
  }
}
