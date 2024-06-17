import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second-page', arguments: controller.text);
                controller.text = '';
              },
              child: const Text('Go to page two'),
            )
          ],
        ),
      ),
    );
  }
}
