import 'package:flutter/material.dart';
import 'package:test_layout/data/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(user.pictureLarge),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '${user.firstName} ${user.lastName}',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Email: ${user.email}',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Phone: ${user.phone}',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Age: ${user.age}',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
