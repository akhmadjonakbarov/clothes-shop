import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_ui/constants/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: _logo(),
            ),
            Text(
              "Login to e-Shop",
              textAlign: TextAlign.center,
              style: GoogleFonts.leagueSpartan(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.profile_circled,
                      ),
                      hintText: "Username",
                      hintStyle: GoogleFonts.leagueSpartan(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.lock_circle,
                      ),
                      hintText: "Password",
                      hintStyle: GoogleFonts.leagueSpartan(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      border: const OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.leagueSpartan(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 64,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      alignment: Alignment.center,
      width: 76,
      height: 76,
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.circular(50),
        shape: BoxShape.circle,
        color: primary,
      ),
      child: Text(
        "E",
        textAlign: TextAlign.center,
        style: GoogleFonts.leagueSpartan(
          fontSize: 38,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
