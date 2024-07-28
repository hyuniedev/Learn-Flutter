import 'package:flutter/material.dart';

class ModelButton extends StatelessWidget {
  ModelButton({
    super.key,
    required this.addTask,
  });
  TextEditingController controller = TextEditingController();
  void _handleOnClick(BuildContext context) {
    final name = controller.text.trim();
    if (name.isEmpty) return;
    addTask(name);
    Navigator.pop(context);
  }

  final Function addTask;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Task',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _handleOnClick(context),
                child: const Text('Add Task'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
