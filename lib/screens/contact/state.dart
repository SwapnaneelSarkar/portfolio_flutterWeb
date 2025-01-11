abstract class ContactState {}

class ContactInitial extends ContactState {}

class ContactSending extends ContactState {}

class ContactSent extends ContactState {
  final String message;

  ContactSent({required this.message});
}
