import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_algoriza_task1/features/counter/presentation/cubit/counter_cubit.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
         ;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                     BlocProvider.of<CounterCubit>(context).decreaseCounter(),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.remove,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text( BlocProvider.of<CounterCubit>(context).counter.toString()),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () =>   BlocProvider.of<CounterCubit>(context).increaseCounter(),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
