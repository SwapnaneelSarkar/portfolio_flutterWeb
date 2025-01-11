import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';
import 'event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    // Add your logic here.
  }
}
