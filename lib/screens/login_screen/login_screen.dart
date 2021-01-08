
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
                const SizedBox(height: 16),

                TextFormField(
                  controller: passController,

                  decoration: const InputDecoration(hintText: "Senha"),
                  autocorrect: false,
                  obscureText: true,
                  validator: (pass){
                    if(pass.isEmpty || pass.length < 6)
                      return "Senha Inválida";
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                RaisedButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

                  onPressed: (){},

                  color: Theme.of(context).primaryColor,
                  disabledColor:Theme.of(context).primaryColor.withAlpha(50) ,
                  textColor: Colors.white,

                  child: Text("Entrar", style: TextStyle(fontSize: 15),),
                ),
  ]

          ),
        ),




        )
      ),
    );

  }
}