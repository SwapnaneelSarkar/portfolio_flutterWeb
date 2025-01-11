abstract class ContactEvent {}

class SendMessage extends ContactEvent {
  final String name;
  final String email;
  final String message;

  SendMessage({required this.name, required this.email, required this.message});
}
