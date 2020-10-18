import 'package:batman/screens/home/widgets/batman_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatmanScreenButtons extends AnimatedWidget {

  BatmanScreenButtons(Animation animation, this.onTap) : super(listenable: animation);
  final VoidCallback onTap;

  Animation get _animationButtonsIn => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Opacity(
        opacity: _animationButtonsIn.value,
        child: Transform.translate(
          offset: Offset(0.0, 100 * (1 - _animationButtonsIn.value)),
          child: Column(
            children: [
              BatmanButton(
                left: false,
                text: 'LOGIN',
              ),
              const SizedBox(height: 20,),
              BatmanButton(
                text: 'SIGNUP',
                onTap: onTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
