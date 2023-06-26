import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

//TODO: feel free to customize the error page

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
          children: [
            Text(
              "oops, there was an error",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height > width ? width / 10 : height / 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            ElevatedButton(
              onPressed: () => Modular.to.navigate("/home/"),
              child: const Center(
                child: Text("Return to Home Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
