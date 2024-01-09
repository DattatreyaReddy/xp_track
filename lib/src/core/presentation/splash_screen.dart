import 'package:flutter/material.dart';

import '../../common/widgets/logo/big_xp_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: BigXpLogo()));
}
