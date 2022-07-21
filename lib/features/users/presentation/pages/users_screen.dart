import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/app_cubit/cubit/app_cubit.dart';
import 'package:internship_algoriza_task1/features/users/presentation/widgets/user_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: AppCubit.get(context).controller,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffixIcon: TextButton(
                        onPressed: () {
                          AppCubit.get(context).addData();
                        },
                        child: AppCubit.get(context).selectedUser.isEmpty
                            ? const Text('Save')
                            : const Text('update'),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: RefreshIndicator(
                  onRefresh: () async => AppCubit.get(context).getData(),
                  child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: UserItem(
                              user: AppCubit.get(context).data[index],
                            ),
                          ),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: AppCubit.get(context).data.length),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
