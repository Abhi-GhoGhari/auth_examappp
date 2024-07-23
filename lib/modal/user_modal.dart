class UserModal {
  var uid;
  var displayName;
  var email;
  var photoUrlURL;
  var phoneNumber;

  UserModal(
    this.uid,
    this.displayName,
    this.email,
    this.photoUrlURL,
    this.phoneNumber,
  );

  factory UserModal.froMap(Map Data) => UserModal(
        Data['uid'],
        Data['displayName'],
        Data['email'],
        Data['photoURL'],
        Data['phoneNumber'],
      );

  Map<String, dynamic> get toMap => {
        'uid': uid,
        'displayName': displayName,
        'email': email,
        'photoURL': photoUrlURL,
        'phoneNumber': phoneNumber,
      };
}
