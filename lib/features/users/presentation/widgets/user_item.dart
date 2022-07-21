import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/app_cubit/cubit/app_cubit.dart';

class UserItem extends StatelessWidget {
  const UserItem({Key? key, required this.user}) : super(key: key);

  final Map user;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> AppCubit.get(context).selectUserToUpdate(user:user ),
      child: Row(
        children: [
          CircleAvatar(radius: 25, child: Text('${user['id']}')),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            user['name'],
            style: Theme.of(context).textTheme.titleLarge,
          )),
          IconButton(
              onPressed: () => AppCubit.get(context).deleteUser(user['id']),
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
