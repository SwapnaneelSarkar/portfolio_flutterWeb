import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc() : super(AboutInitial());

  @override
  Stream<AboutState> mapEventToState(AboutEvent event) async* {
    if (event is LoadAboutData) {
      yield AboutLoading();
      // Simulating a delay to fetch data (e.g., from an API or database).
      await Future.delayed(Duration(seconds: 2));
      yield AboutLoaded(
        description: "This is the About section for the portfolio.",
      );
    }
  }
}
