

// class UserModel {
//   String name;
//   String email;
//   String password;
//    String typeuser;

//   // 2nd part
//   UserModel({required this.email, required this.password, required this.name, timestamp,required this.typeuser});

//   //3rd creating map -- insert
//   toMap() {
//     // Map map = Map();
//     // map["name"] = name;
//     // return map;

//     return {
//       'name': name,
//       'typeuser':typeuser,
//       'email': email,
//       'uid': password,
//       // 'timestamp': FieldValue.serverTimestamp()
//     };
//   }

//   // 4th part - from map to model object

//   factory UserModel.fromMap(Map map, param1) {
//     return UserModel(
//       name: map["name"],
//       typeuser: map["typeuser"],
//       email: map["email"],
//       timestamp: map["timestamp"],
//      password : map["uid"],
//     );
//   }


// }
