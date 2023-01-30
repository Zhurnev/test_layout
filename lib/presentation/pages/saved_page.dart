import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubits/users_cubit.dart';
import '../../logic/cubits/users_state.dart';
import '../widgets/user_listtile.dart';

class SavedPage extends StatelessWidget {
  final String title;
  const SavedPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state.savedUsers.isEmpty) {
            return const Center(child: Text("No saved users yet!"));
          }
          return ListView.builder(
            itemCount: state.savedUsers.length,
            itemBuilder: ((
              context,
              index,
            ) {
              return UserListTile(user: state.savedUsers[index], index: index);
            }),
          );
        },
      ),
    );
  }
}
