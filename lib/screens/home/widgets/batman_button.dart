import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

const _imageColor = Color(0xFFC8B853);

class BatmanButton extends StatelessWidget {
  const BatmanButton({this.onTap, this.text, this.left = true});

  final VoidCallback onTap;
  final String text;
  final bool left;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRect(
        child: Container(
          height: 55,
          color: Color(0xFFFDE86A),
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              if (left)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..translate(-10.0)
                      ..rotateZ(vector.radians(35)),
                    child: Image.asset('assets/batman_logo.png',
                      height: 40,
                      color: _imageColor,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              if (!left)
                Align(
                  alignment: Alignment.centerRight,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..translate(10.0)
                      ..rotateZ(vector.radians(-35)),
                    child: Image.asset('assets/batman_logo.png',
                      height: 40,
                      color: _imageColor,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
