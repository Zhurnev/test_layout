import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/app/logic/cubits/users_state.dart';
import 'package:test_layout/app/presentation/widgets/user_listtile.dart';
import 'package:test_layout/l10n/l10n.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.savedAppBarTitle)),
      body: BlocBuilder<UsersCubit, UsersState>(
        builder: (context, state) {
          if (state.savedUsers.isEmpty) {
            return Center(child: Text(l10n.noSaved));
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
