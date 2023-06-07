import 'package:flutter/material.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Form(
                            child: Column(
                              children: [
                                Text('Username'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Form(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Type your username',
                                prefixIcon: Icon(Icons.person_outline),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text('Password'),
                              ],
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Type your password',
                                prefixIcon: Icon(Icons.lock_outline),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 200.0),
                              child: Text('Forgot password?'),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 120),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFF00FFFF),
                                    Colors.purple,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30),

                              ),
                              child: TextButton(
                                onPressed: () {
                                  // TODO: Implement your button logic here
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    shadows: [
                                      Shadow(
                                        color: Colors.purpleAccent,
                                        offset: Offset(0, 1),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Or Sign Up Using',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Wrap(
                              children: [
                                Icon(
                                  Icons.facebook,
                                  color: Colors.blue,
                                  size: 30.0,
                                ),
                                Icon(
                                  Icons.g_mobiledata,
                                  color: Colors.yellow,
                                  size: 30.0,
                                ),
                                Icon(
                                  Icons.anchor_outlined,
                                  color: Colors.red,
                                  size: 30.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text('Or Sign Up Using'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Sign Up ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
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

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(text),
    );
  }
}
