import 'package:flutter/material.dart';
class signupscreen extends StatefulWidget {
  const signupscreen({super.key});

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController comfirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: Center(
        child: Container(
          height: 450,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Center(
                  child: Text("signup",style: TextStyle(
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
                     Navigator.of(context).pushNamed('/login');
                    },
                    child: Text("Have an account login here")),
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
    );
  }
}
