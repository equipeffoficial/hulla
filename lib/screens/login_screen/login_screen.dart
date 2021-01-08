
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Polícia Civil '),
      ),
      body: Container(

        color: Colors.grey,
        child: Center(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),

            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: [

                Image.asset('images/brasao.jpg',height: 200,
                ),

              TextFormField(
              controller: emailController,

              decoration: const InputDecoration(hintText: "E-mail"),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,

            ),
  ]

          ),
        ),




        )
      ),
    );

  }
}