abstract class ProjectsState {}

class ProjectsInitial extends ProjectsState {}

class ProjectsLoading extends ProjectsState {}

class ProjectsLoaded extends ProjectsState {
  final List<String> projects;

  ProjectsLoaded({required this.projects});
}
