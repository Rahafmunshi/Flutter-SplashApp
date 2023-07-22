import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  MaterialColor color = Colors.amber;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  double height = 0;
  double width = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 200),(){
      setState(() {
        height = 440;
        width = 340;
      });
    });
    Future.delayed(Duration(milliseconds: 800),(){
      setState(() {
        height = 450;
        width = 350;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: height,
          width: width,
          child:
          Container(
            height: 450,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child:  height != 450
                ? null
                :Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 const Center(
                child: Text("Welcome back",style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.indigo,
                ),
                ),
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                    TextFormField(
                      controller: password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.password),
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                   ),
                 ),
                 InkWell(
                   onTap: () {
                     //
                     Navigator.of(context).pushNamed('/signup');
                   },
                     child: Text("Do not have an account signup here")),
                 ElevatedButton(
                 onPressed: () {
                   String _email = email.text.toString();
                   String _password = password.text.toString();
                   if(_email.isNotEmpty && _password.isNotEmpty){
                     Navigator.of(context).pushNamed('/home');

                   } else {
                     print("error");
                   }
                   print("Email is: ${email.text.toString()}");
                   print("password is: ${password.text.toString()}");

                   print("done sucessfully");
                   },
                 child: const Text("Login"),
                 ),
              ],
            ),
          ),
      ),
        ),
      ),
    );
  }
}


