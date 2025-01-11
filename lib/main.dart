import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/about/bloc.dart';
import 'screens/contact/bloc.dart';
import 'screens/home screen/bloc.dart';
import 'screens/home screen/view.dart';
import 'screens/projects/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
        BlocProvider<AboutBloc>(create: (_) => AboutBloc()),
        BlocProvider<ProjectsBloc>(create: (_) => ProjectsBloc()),
        BlocProvider<ContactBloc>(create: (_) => ContactBloc()),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
