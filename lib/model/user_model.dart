class UserModel {
  final String id;
  final String email;
  final String name;
  final String noHandphone;
  final String status;
  final int uang;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.noHandphone,
    this.status='User Free',
    this.uang = 0,
  });

  List<Object?> get props => [
        id,
        email,
        name,
      ];
}
