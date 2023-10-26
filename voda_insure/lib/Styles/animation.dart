import 'package:flutter/material.dart';

class DropAnimation extends StatefulWidget {
  final Widget myWidget;
  const DropAnimation({Key? key, required this.myWidget}) : super(key: key);

  @override
  _DropAnimationState createState() => _DropAnimationState();
}

class _DropAnimationState extends State<DropAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -8.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: widget.myWidget,
      ),
    );
  }
}
