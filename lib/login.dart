import 'package:flutter/material.dart';
import 'package:one/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Login(),
    );
  }
}

class _Login extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
                  decoration: InputDecoration(
                    hintText: "Username",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide(color: Colors.blue))
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
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
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(14)
                    ),child: Center(
                      child: Text("Login", style: TextStyle(fontSize: 34, color: Colors.white),),
                    ),
                  ),
                ),
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