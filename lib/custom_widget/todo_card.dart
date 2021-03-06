import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color(0xFFEF31F3),
          size: 27.5,
        ),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Plan trip to Finland",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Color(0XFF40586F)),
          ),
        ),
        subtitle: const Text("The family trip to Finland next summer"),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: const [
              Icon(Icons.notifications_none_outlined, color: Color(0XFFEF31F3)),
              SizedBox(
                width: 10,
              ),
              Text(
                "Yesterday",
                style: TextStyle(color: Color(0XFFEF31F3)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
