import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_simples_bloc/page_cubit/cubit/counter_cubit.dart';
import 'package:project_simples_bloc/page_cubit/cubit/counter_cubit.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text('Counter ${state.counter}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium,);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  context.read<CounterCubit>().increment();
                }, icon: const Icon(Icons.add)),
                IconButton(onPressed: () {
                  context.read<CounterCubit>().decremente();
                }, icon: const Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
