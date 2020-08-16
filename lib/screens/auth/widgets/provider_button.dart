import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class ProviderButton extends StatefulWidget {
  final BuildContext context;
  final String signInType;

  const ProviderButton({Key key, this.context, this.signInType})
      : super(key: key);

  @override
  _ProviderButtonState createState() => _ProviderButtonState();
}

class _ProviderButtonState extends State<ProviderButton> {
  @override
  Widget build(BuildContext context) {
    switch (widget.signInType) {
      case "google":
        return InkWell(
          onTap: () => context.signInWithGoogle(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Image.asset(
              "assets/google_icon.png",
              width: 30.0,
            ),
          ),
        );

        break;
      case "apple":
        return InkWell(
          onTap: () => context.signInWithApple(),
          child: Container(
            padding: const EdgeInsets.all(17.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Image.asset(
              "assets/apple_icon.png",
              width: 24.0,
            ),
          ),
        );
        break;
      case "twitter":
        return InkWell(
          onTap: () => context.signInWithTwitter(),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Image.asset(
              "assets/twitter_icon.png",
              width: 30.0,
            ),
          ),
        );
        break;
      default:
        return const Text("error");
    }
  }
}
