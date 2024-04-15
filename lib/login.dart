import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:one/adminpages/adminPage.dart';
import 'package:one/drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _Login();
}

class _Login extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  Future<void> logiin() async {
    final String usernam = username.text;
    final String pasword = password.text;

    final response = await http.post(Uri.parse("http://192.168.0.114:8000/api/login"),
      headers: <String, String> {
         'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': usernam,
        'password': pasword,
      })
    );
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Admin()));
      print("Login Succesfully");
    }else{
      print("Login failed: ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawers(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Login Form", 
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900),),
                SizedBox(height: 30,),
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue))
                  ),
                ),SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Password ?")
                  ],
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () => logiin(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(14)
                    ),child: Center(
                      child: Text("Login", style: TextStyle(fontSize: 34, color: Colors.white),),
                    ),
                  ),
                ),
                // ElevatedButton(onPressed: () => logiin(), child: Text("Login")),
                SizedBox(height: 60,),
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 0.5,color: Colors.grey,)),
                    SizedBox(width: 5,),
                    Text("Continue with"),
                    SizedBox(width: 5,),
                    Expanded(child: Divider(thickness: 0.5,color: Colors.grey,)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}