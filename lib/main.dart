import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text('Sign In',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 48,
            ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              hintText: 'Loremipsum@gmail.com',
              labelText: 'EMAIL OR PHONE',
            ),
          ),
          CustomTextField(
            hintText: '',
            labelText: 'PASSWORD',
          ),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: Text('Forgot password?'),
          ),
          SizedBox(height: 70,),
          Container(
            width: 300,
            height: 50,
            
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all<Color>(Color(0xff2B4C59))
              ),
              onPressed: (){},
              child: Text('Log In',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
              ),),),
              Text('OR'),
              Stack(
                
                children: [
                  InkWell(
  onTap: () {},
  child: Ink(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black12),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('')) ),
      width: 300,
      height: 50,
      child: Center(child: Text('Continue With Google')),
    ),
  ),
)

                  
      ],
                
  ),
  Stack(
                
 children: [
      InkWell(
  onTap: () {
  },
  child: Ink(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black12),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage('')) ),
      width: 300,
      height: 50,
      child: Center(child: Text('Continue With Facebook')),
    ),
  ),
)
                  
                ],
                
              )
          
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText
  });
final String hintText;
final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          
        ),
      ),
    );
  }
}