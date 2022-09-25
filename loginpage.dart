import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Login',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Form(
                child: Column(children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: (value) {
                  return value!.isEmpty ? 'Please fill in your email' : null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {},
                validator: (value) {
                  return value!.isEmpty ? 'Please enter your password' : null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {},
                child: Text('Login'),
                color: Colors.green,
                textColor: Colors.black,
              ),
            ])),
          ),
        ],
      ),
    ));
  }
}
