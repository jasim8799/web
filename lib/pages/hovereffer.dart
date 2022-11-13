import 'package:flutter/material.dart';

class onHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const onHover({Key? key, required this.builder}) : super(key: key);

  @override
  State<onHover> createState() => _onHoverState();
}

class _onHoverState extends State<onHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(8, -10, -8);
    final transformed = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 388),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
