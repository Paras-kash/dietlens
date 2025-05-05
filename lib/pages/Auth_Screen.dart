import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LoginScreen.dart';
import 'SignupScreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animations
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeInAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),

                // Back Button
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                const SizedBox(height: 20),

                // Title with animation
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: Column(
                    children: [
                      Text(
                        'Welcome to',
                        style: GoogleFonts.righteous(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'DietLens',
                        style: GoogleFonts.righteous(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFF2BB05),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Your personal nutrition assistant',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black38,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 400),

                // Login Button
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.righteous(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Sign Up Button
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: Colors.black87, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.righteous(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Continue as Guest
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to home screen or dashboard as guest
                      // Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Continue as Guest',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFF2BB05),
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.arrow_forward,
                          color: Color(0xFFF2BB05),
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
