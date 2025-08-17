import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hecta/core/helpers/app_assets.dart';
import 'package:hecta/core/routing/app_router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fadeAnimation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      );

      _controller.forward();

      Future.delayed(const Duration(seconds: 3), () {
        // ...existing code for navigation...
        if (!mounted) return;

        context.replaceRoute(LoginRoute());

        // adjust route as needed
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0554cb),

      body: Center(
        child: FadeTransition(
          
          opacity: _fadeAnimation,
          child: Image.asset(
            Assets.imagesMainLogo,
            width: 200,
            height: 200,
          ), // ensure asset exists
        ),
      ),
    );
  }
}
