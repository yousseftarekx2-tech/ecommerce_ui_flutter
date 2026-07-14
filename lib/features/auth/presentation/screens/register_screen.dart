import 'package:ecommerce_ui_flutter/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF9F9F9),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        child: ListView(
          children: [
            const Text(
              'Create Account',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Fill in your details below to get started on a seamless shopping experience',
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
                  label: Text('First Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  prefixIconColor: Color(0xFF707070),
                ),
              ),
            ),
            const SizedBox(height: 13),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const TextField(
                decoration: InputDecoration(
                  label: Text('Last Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  prefixIconColor: Color(0xFF707070),
                ),
              ),
            ),
            const SizedBox(height: 13),
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
            const SizedBox(height: 13),
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
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 1.4,
                ),
                children: [
                  TextSpan(
                    text:
                        "By clicking Create Account, you acknowledge that you have read and agreed to our ",
                  ),
                  TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                      color: Color(0xFF2D4B3E),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(text: " and "),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(
                      color: Color(0xFF2D4B3E),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
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
              child: const Text(
                'Create Acount',
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OR", style: TextStyle(color: Color(0xFF2D4B3E))),
              ],
            ),
            const SizedBox(height: 25),
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
                side: const BorderSide(color: Color(0xFF2D4B3E), width: 1.5),
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
                side: const BorderSide(color: Color(0xFF2D4B3E), width: 1.5),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
