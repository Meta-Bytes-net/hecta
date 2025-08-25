import 'package:flutter/material.dart';
import 'package:flutter_tawkto/flutter_tawk.dart';

class CustomerServicesScreenContent extends StatelessWidget {
  const CustomerServicesScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    // List of options with their corresponding icons.

    return SafeArea(
      child: Center(
        child: Tawk(
          placeholder: CircularProgressIndicator.adaptive(),
          directChatLink:
              'https://tawk.to/chat/68a71eb3947aa219273a1cb6/1j36cvs02',
          visitor: TawkVisitor(
            name: 'Ayoub AMINE',
            email: 'ayoubamine2a@gmail.com',
          ),
        ),
      ),
    );
  }
}
