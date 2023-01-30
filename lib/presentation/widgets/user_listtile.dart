import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/user.dart';
import '../../logic/cubits/users_cubit.dart';

class UserListTile extends StatelessWidget {
  final int index;
  final User user;
  const UserListTile({super.key, required this.user, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.pictureLarge),
      ),
      title: Text("${user.name.first} ${user.name.last}"),
      subtitle:
          Text("Age: ${user.age}, Email: ${user.email}, Phone: ${user.phone}"),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          BlocProvider.of<UsersCubit>(context).removeSavedUser(index);
        },
      ),
    );
  }
}
