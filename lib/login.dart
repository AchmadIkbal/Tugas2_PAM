import 'package:flutter/material.dart';
import 'nama.dart';

class LoginPageFul extends StatefulWidget {
  const LoginPageFul({Key? key}) : super(key: key);

  @override
  _LoginPageFulState createState() => _LoginPageFulState();
}

class _LoginPageFulState extends State<LoginPageFul> {
  @override

  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/ergter-removebg-preview.png',
                width: 200,
                height: 200,
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: TextFormField(
                onChanged: (value){
                  username = value;
                },
                enabled: true,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  prefixIcon  : const Icon(Icons.person),
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(8)),
                  //     borderSide: BorderSide(
                  //       color: Colors.green,
                  //     ),
                  //   ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(8)),
                  //   borderSide: BorderSide(
                  //     color: Colors.red,
                  //   ),
                  // )
                ),
              ),
            ),
          Container(
          padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: TextFormField(
          onChanged: (value){
            password = value;
          },
          obscureText: true,
          enabled: true,
          decoration: const InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(8),
            prefixIcon  : const Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(8)),
            //     borderSide: BorderSide(
            //       color: Colors.green,
            //     ),
            //   ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(8)),
            //   borderSide: BorderSide(
            //     color: Colors.red,
            //   ),
            // )
          ),
        ),
      ),
      Container(
      padding: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
       ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
       primary: (isLoginSuccess) ? Colors.red : Colors.blue //ternary operation
         ),
        child: Text("Login"),
          onPressed: (){
          String text = "";
          if(username == "admin" && password == "admin"){
          setState(() {
          text = "Login Success";
          isLoginSuccess = true;
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return MyStatefulWidget();
            }),);
          });
          }
          else{
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            }
            );
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _usernameField(){
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //       vertical: 10,
  //       horizontal: 20,
  //     ),
  //     child: TextFormField(
  //       onChanged: (value){
  //         username = value;
  //       },
  //       enabled: true,
  //       decoration: const InputDecoration(
  //         hintText: 'Username',
  //         prefixIcon  : const Icon(Icons.person),
  //         contentPadding: EdgeInsets.all(8),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(10)),
  //           borderSide: BorderSide(
  //             color: Colors.blue,
  //           ),
  //         ),
  //         // focusedBorder: OutlineInputBorder(
  //         //     borderRadius: BorderRadius.all(Radius.circular(8)),
  //         //     borderSide: BorderSide(
  //         //       color: Colors.green,
  //         //     ),
  //         //   ),
  //         // enabledBorder: OutlineInputBorder(
  //         //   borderRadius: BorderRadius.all(Radius.circular(8)),
  //         //   borderSide: BorderSide(
  //         //     color: Colors.red,
  //         //   ),
  //         // )
  //       ),
  //     ),
  //   );
  // }

  // Widget _passwordField(){
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //       vertical: 10,
  //       horizontal: 20,
  //     ),
  //     child: TextFormField(
  //       onChanged: (value){
  //         password = value;
  //       },
  //       obscureText: true,
  //       enabled: true,
  //       decoration: const InputDecoration(
  //         hintText: 'Password',
  //         contentPadding: EdgeInsets.all(8),
  //         prefixIcon  : const Icon(Icons.lock),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.all(Radius.circular(10)),
  //           borderSide: BorderSide(
  //             color: Colors.blue,
  //           ),
  //         ),
  //         // focusedBorder: OutlineInputBorder(
  //         //     borderRadius: BorderRadius.all(Radius.circular(8)),
  //         //     borderSide: BorderSide(
  //         //       color: Colors.green,
  //         //     ),
  //         //   ),
  //         // enabledBorder: OutlineInputBorder(
  //         //   borderRadius: BorderRadius.all(Radius.circular(8)),
  //         //   borderSide: BorderSide(
  //         //     color: Colors.red,
  //         //   ),
  //         // )
  //       ),
  //     ),
  //   );
  // }

  // Widget _loginButton(BuildContext context){
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //       horizontal: 20,
  //       vertical: 10,
  //     ),
  //     width: MediaQuery.of(context).size.width,
  //     child: ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //           primary: (isLoginSuccess) ? Colors.blue : Colors.red //ternary operation
  //       ),
  //       child: Text("Login"),
  //       onPressed: (){
  //         String text = "";
  //         if(username == "arighi" && password == "mas hanif"){
  //           setState(() {
  //             text = "Login Success";
  //             isLoginSuccess = true;
  //             return MyStatefulWidget();
  //           });
  //         }
  //         else{
  //           setState(() {
  //             text = "Login Failed";
  //             isLoginSuccess = false;
  //           });
  //         }
  //
  //         SnackBar snackBar = SnackBar(
  //           content: Text(text),
  //         );
  //
  //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //       },
  //     ),
  //   );
  // }
}
