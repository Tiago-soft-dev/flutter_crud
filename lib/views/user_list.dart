import 'package:flutter/material.dart';
import 'package:myapp/components/user_tile.dart';
import 'package:myapp/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...dummyUsers};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) =>UserTile(users.values.elementAt(i)),
        ),
        );
  }
}
