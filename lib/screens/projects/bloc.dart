import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc() : super(ProjectsInitial());

  @override
  Stream<ProjectsState> mapEventToState(ProjectsEvent event) async* {
    if (event is LoadProjectsData) {
      yield ProjectsLoading();
      // Simulating data loading.
      await Future.delayed(Duration(seconds: 2));
      yield ProjectsLoaded(
        projects: [
          "Project 1: SheSafe",
          "Project 2: Gaia's Touch",
          "Project 3: NeighborGood",
        ],
      );
    }
  }
}
