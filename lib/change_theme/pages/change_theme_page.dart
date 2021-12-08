import 'package:cubit_some_example/change_theme/cubit/change_theme_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';

class ChangeThemePage extends StatefulWidget {
  @override
  _ChangeThemePageState createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Theme"),
      ),
      body: Container(
        child: BlocProvider(
          create: (context) => ChangeThemeCubit(),
          child: BlocConsumer<ChangeThemeCubit, ChangeThemeState>(
            listener: (context, state) {
              if (state is ChangeThemeInitial) {
                print("initial");
              } else if (state is ChangeThemeLight) {
                print("light");
              } else if (state is ChangeThemeDark) {
                print("dark");
              } else if (state is ChangeThemeToggle) {
                print("toggle");
              }
            },
            builder: (context, state) {
              // if (state is ChangeThemeInitial) {
              //    return Initializing();
              // }

              return Initializing(state);
            },
          ),
        ),
      ),
    );
  }
}

class Initializing extends StatelessWidget {
  const Initializing(ChangeThemeState state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RaisedButton(
              child: Text("dark"),
              onPressed: () {
                final changeThemeCubit =
                    BlocProvider.of<ChangeThemeCubit>(context);
                changeThemeCubit.setThemeDark();
              }),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Text("light"),
              onPressed: () {
                final changeThemeCubit =
                    BlocProvider.of<ChangeThemeCubit>(context);
                changeThemeCubit.setThemeLight();
              }),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Text("toggle"),
              onPressed: () {
                final changeThemeCubit =
                    BlocProvider.of<ChangeThemeCubit>(context);
                changeThemeCubit.setThemeToggle();
              }),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
