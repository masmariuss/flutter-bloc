import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/blocs.dart';
import '../../../config/config.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final usernameCubit = context.watch<UsernameCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        child: BlocBuilder<UsernameCubit, String>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) => Text(state)
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // final usernameCubit = context.read<UsernameCubit>();
          // usernameCubit.setUsername(RandomGenerator.getRandomName());

          context
              .read<UsernameCubit>()
              .setUsername(RandomGenerator.getRandomName());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
