import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double iconTopPos = 20;
  double iconBtmPos = -43;
  double textTopPos = -32;
  double textBtmPos = 14;
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 300,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            iconTopPos = -42;
            iconBtmPos = 14;
            textTopPos = 24;
            textBtmPos = -30;
            isAnimated = true;
          });
        },
        onExit: (a) {
          setState(() {
            iconTopPos = 20;
            iconBtmPos = -43;
            textTopPos = -32;
            textBtmPos = 14;
            isAnimated = false;
          });
        },
        child: Stack(
          children: [
            AnimatedPositioned(
              top: iconTopPos,
              duration: const Duration(milliseconds: 400),
              child: FaIcon(
                widget.icon,
                color: Colors.black,
                size: 40,
              ),
            ),
            AnimatedPositioned(
              bottom: iconBtmPos,
              duration: const Duration(milliseconds: 400),
              child: FaIcon(
                widget.icon,
                color: Colors.blue,
                size: 40,
              ),
            ),
            AnimatedPositioned(
              bottom: textBtmPos,
              left: 60,
              duration: const Duration(milliseconds: 400),
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            AnimatedPositioned(
              top: textTopPos,
              left: 60,
              duration: const Duration(milliseconds: 400),
              child: Text(
                widget.text,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isAnimated ? 0 : 1,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 40,
              right: 10,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isAnimated ? 1 : 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
