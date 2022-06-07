import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahap/cubit/cubit.dart';
import 'package:sahap/cubit/states.dart';
import 'package:sahap/share/components.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SahapCubit, SahapStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var screens = SahapCubit.get(context).menu;

        return menuScreen();
      },
    );
  }
}
