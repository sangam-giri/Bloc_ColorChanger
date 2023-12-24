import '/src/view_model/blocs/cubits/container_cubit/container_cubit.dart';
import '/src/view_model/blocs/cubits/container_cubit/container_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          BlocProvider.of<ContainerCubit>(context).colorChanger();
        },
        child: BlocBuilder<ContainerCubit, ContainerState>(
          builder: (context, state) {
            if (state is RedState) {
              return Container(height: 200, width: 200, color: Colors.red);
            }
            return Container(height: 200, width: 200, color: Colors.blue);
          },
        ),
      )),
    );
  }
}
