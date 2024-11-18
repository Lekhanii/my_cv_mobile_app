import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:my_cv_mobile_app/models/todo/todo_response_model.dart'; // Import to parse JSON

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiscreenState();
}

class _ApiscreenState extends State<ApiScreen> {
  bool isLoading = true;
  List<TodoResponseModel>? data;

  @override
  void initState() {
    getTodo();
    super.initState();
  }

  void getTodo() async {
    try {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
      if (response.statusCode == 200) {
        setState(() {
          data = todoResponseModelFromJson(response.body);
          isLoading = false;
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api"),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () async {
                getTodo();
              },
              child: ListView.builder(
                itemCount: data?.length ?? 0,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: ListTile(
                      isThreeLine: true,
                      leading: CircleAvatar(
                        child: Text(
                          data?[index].id.toString() ?? '',
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      title: Text(
                        data?[index].title ?? 'No title',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("Completed: ${data?[index].completed}"),
                      trailing: Icon(
                        data?[index].completed == true
                            ? Icons.check_circle
                            : Icons.cancel,
                        color: data?[index].completed == true
                            ? Colors.green
                            : Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
