// import 'package:flutter/material.dart';
// import 'package:myapp/components/user_tile.dart';
// import 'package:myapp/data/dummy_users.dart';

// class UserList extends StatelessWidget {
//   const UserList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final users = {...dummyUsers};

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Lista de Usuários'),
//         ),
//         body: ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (ctx, i) =>UserTile(users.values.elementAt(i)),
//         ),
//         );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myapp/components/user_tile.dart';
import '../data/dummy_users.dart'; // Importa a constante dummyUsers
// ...

class UserList extends StatelessWidget {
  // Garante que 'users' NUNCA será nulo e está pronto para uso.
  // A variável 'users' é inicializada imediatamente com a cópia de 'dummyUsers'.
  final users = {...dummyUsers};

  UserList({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        // Agora, users.length está seguro, pois 'users' não é null.
        itemCount: users.length, 
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
