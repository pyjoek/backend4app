import 'package:flutter/material.dart';
import 'login.dart';

class AdminDrawers extends StatelessWidget {
  const AdminDrawers({super.key});

  @override 
  Widget build(BuildContext context){
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              // AppBar(title: Text('Menu')),
              SizedBox(height: 4,),
              InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                      ),
                    child: Center(child: Text('Foods', style: TextStyle(fontWeight: FontWeight.w900),)),
                  ),
                ),
              SizedBox(height: 4,),
              InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                      ),
                    child: Center(child: Text('Drinks', style: TextStyle(fontWeight: FontWeight.w900),)),
                  ),
                ),
              SizedBox(height: 4,),
              InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                      ),
                    child: Center(child: Text('Add Drinks', style: TextStyle(fontWeight: FontWeight.w900),)),
                  ),
                ),
              SizedBox(height: 4,),
              InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                      ),
                    child: Center(child: Text('Add Foods', style: TextStyle(fontWeight: FontWeight.w900),)),
                  ),
                ),
              SizedBox(height: 4,),
              InkWell(
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()))
                  },
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(21)
                      ),
                    child: Center(child: Text('Add Tables', style: TextStyle(fontWeight: FontWeight.w900),)),
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
                    child: Center(child: Text('Login', style: TextStyle(fontWeight: FontWeight.w900),)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}