import 'package:flutter/material.dart';


class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfileAnimationState createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0,0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const CircleAvatar(
        radius: 104,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/asad.png',),
        ),
      )
    );
  }
}