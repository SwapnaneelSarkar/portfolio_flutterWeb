import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial());

  @override
  Stream<ContactState> mapEventToState(ContactEvent event) async* {
    if (event is SendMessage) {
      yield ContactSending();
      // Simulating message sending delay.
      await Future.delayed(Duration(seconds: 2));
      yield ContactSent(message: "Message sent successfully!");
    }
  }
}
