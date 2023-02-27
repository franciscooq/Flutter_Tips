import 'package:data_table/data/user.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> users = [];

  @override
  void initState() {
    users = User.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          columns: const [
            DataColumn(label: Text("First Name")),
            DataColumn(label: Text("Last Name")),
            DataColumn(label: Text("Age")),
          ],
          rows: users
              .map(
                (user) => DataRow(
                  cells: [
                    DataCell(
                      Text(user.firstName),
                    ),
                    DataCell(
                      Text(user.lastName),
                    ),
                    DataCell(
                      Text(user.age.toString()),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
