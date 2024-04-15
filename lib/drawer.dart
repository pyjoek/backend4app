import 'package:flutter/material.dart';
import 'main.dart';
import 'package:one/mainDrinks.dart';
import 'login.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override 
  Widget build(BuildContext context){
    return SafeArea(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                // AppBar(title: Text('Menu')),
                SizedBox(height: 4,),
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()))
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21)
                        ),
                      child: Center(child: Text('Foods')),
                    ),
                  ),
                SizedBox(height: 4,),
                InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Drinks()))
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21)
                        ),
                      child: Center(child: Text('Drinks')),
                    ),
                  ),
                SizedBox(height: 4,),
                Center(
                  child: InkWell(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(21)
                        ),
                      child: Center(child: Text('Login')),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}