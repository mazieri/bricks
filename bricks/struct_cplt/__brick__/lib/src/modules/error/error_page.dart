import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ops, have an Error",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: height > width ? width / 10 : height / 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            ElevatedButton(
              onPressed: () => Modular.to.navigate("/"),
              child: const Center(
                child: Text("App Restart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
