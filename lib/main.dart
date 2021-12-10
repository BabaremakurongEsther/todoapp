import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todoapp/custom_widget/todo_card.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App",
      home: TodoHome(),
    );
  }
}

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("BE"),
          ),
        ),
        title: const Text(
          "My Tasks",
          style: TextStyle(color: Colors.blueAccent),
        ),
        actions: const [
          Icon(Icons.sort),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.search)
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const TodoCard();
        },
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: InkWell(
          onTap: () {
            showBarModalBottomSheet(
              context: context,
              builder: (context) => Container(
                color: Color(0xFFDEDEDE),
                height: MediaQuery.of(context).size.height - 150,
                child: ListView.builder(
                  itemBuilder: (context, index) => TodoCard(),
                  itemCount: 10,
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(15),
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFCCD9E5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: const [
                      Icon(CupertinoIcons.check_mark_circled_solid),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Completed"),
                      Icon(Icons.keyboard_arrow_down),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const Text("24"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
