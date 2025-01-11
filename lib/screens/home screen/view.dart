import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../about/view.dart';
import '../projects/view.dart';
import '../contact/view.dart';
import 'bloc.dart';
import 'state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "Welcome to My Portfolio",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
                AboutView(),
                ProjectsView(),
                ContactView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
