import 'package:deviceinfo/component/component.dart';
import 'package:deviceinfo/cubit/cubit.dart';
import 'package:deviceinfo/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoCubit(),
      child: BlocConsumer<InfoCubit, InfoStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = InfoCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Info"),
              centerTitle: true,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(constText: "model", text: cubit.model),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "host", text: cubit.host),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "device Version", text: cubit.deviceVersion),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "id", text: cubit.id),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "brand", text: cubit.brand),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "display", text: cubit.display),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "realDevice", text: cubit.realDev),
                  const SizedBox(
                    height: 10,
                  ),
                  text(constText: "type", text: cubit.type),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                cubit.Information();
              },
              child: const Icon(Icons.info),
            ),
          );
        },
      ),
    );
  }
}
