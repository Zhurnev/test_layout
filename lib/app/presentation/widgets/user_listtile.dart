import 'package:flutter/material.dart';

import 'package:test_layout/app/data/models/user.dart';
import 'package:test_layout/app/logic/cubits/users_cubit.dart';
import 'package:test_layout/locator.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.user, required this.index});
  final int index;
  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.pictureLarge),
      ),
      title: Text('${user.name.first} ${user.name.last}'),
      subtitle:
          Text('Age: ${user.age}, Email: ${user.email}, Phone: ${user.phone}'),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          locator<UsersCubit>().removeSavedUser(index);
        },
      ),
    );
  }
}
