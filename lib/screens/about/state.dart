abstract class AboutState {}

class AboutInitial extends AboutState {}

class AboutLoading extends AboutState {}

class AboutLoaded extends AboutState {
  final String description;

  AboutLoaded({required this.description});
}
