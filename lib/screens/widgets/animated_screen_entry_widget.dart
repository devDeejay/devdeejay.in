import 'package:flutter/widgets.dart';

class AnimatedScreenEntryWidget extends StatefulWidget {
  final Widget child;

  @override
  _AnimatedScreenEntryWidgetState createState() =>
      _AnimatedScreenEntryWidgetState();

  AnimatedScreenEntryWidget({this.child});
}

class _AnimatedScreenEntryWidgetState extends State<AnimatedScreenEntryWidget>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Transform(
            transform: Matrix4.translationValues(
                0, animation.value * MediaQuery.of(context).size.height, 0.0),
            child: widget.child);
      },
    );
  }
}
