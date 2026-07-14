import 'package:ecommerce_ui_flutter/features/auth/presentation/screens/register_screen.dart';
import 'package:ecommerce_ui_flutter/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: ListView(
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Enter your email to start shopping and get awesome deals today!',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: Color(0xFF707070),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_sharp),
                  prefixIconColor: Color(0xFF707070),
                  suffixIconColor: Color(0xFF707070),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Forgot your password?",
              style: TextStyle(
                color: Color(0xFF2D4B3E),
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 24),
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              color: const Color(0xFF2D4B3E),
              textColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('Log In', style: TextStyle(fontSize: 17)),
            ),
            const SizedBox(height: 35),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OR", style: TextStyle(color: Color(0xFF2D4B3E))),
              ],
            ),
            const SizedBox(height: 35),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: const Color(0xFF2D4B3E),
              elevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Color(0xFF2D4B3E),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      "assets/icons/flat-color-icons_google.png",
                    ),
                  ),
                  const Text(
                    "Log In with Google",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              textColor: const Color(0xFF2D4B3E),
              elevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(
                  color: Color(0xFF2D4B3E),
                  width: 1.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Image.asset("assets/icons/cib_facebook-f.png"),
                  ),
                  const Text(
                    "Log In with Facebook",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 33, 79, 34),
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
