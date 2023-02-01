import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/app/logic/cubits/users_state.dart';
import 'package:test_layout/app/presentation/widgets/user_listtile.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state.savedUsers.isEmpty) {
            return const Center(child: Text('No saved users yet!'));
          }
          return ListView.builder(
            itemCount: state.savedUsers.length,
            itemBuilder: (
              context,
              index,
            ) {
              return UserListTile(user: state.savedUsers[index], index: index);
            },
          );
        },
      ),
    );
  }
}
