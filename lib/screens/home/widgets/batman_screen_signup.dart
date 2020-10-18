import 'package:batman/screens/home/widgets/batman_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BatmanScreenSignUp extends AnimatedWidget {

  BatmanScreenSignUp(
      Animation animation,
  ) : super(listenable: animation);
  //final VoidCallback onTap;
  Animation get _animationSignupIn => listenable as Animation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Opacity(
        opacity: _animationSignupIn.value,
        child: Transform.translate(
          offset: Offset(0.0, 100 * (1 - _animationSignupIn.value)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'GET ACCESS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20,),
                _BatmanInput(
                  label: 'FULL NAME',
                ),
                const SizedBox(height: 1,),
                _BatmanInput(
                  label: 'EMAIL ID',
                ),
                const SizedBox(height: 1,),
                _BatmanInput(
                  label: 'PASSWORD',
                  password: true,
                ),
                const SizedBox(height: 10,),
                BatmanButton(
                  text: 'SIGNUP',
                  onTap: (){},
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BatmanInput extends StatelessWidget {
  const _BatmanInput({this.label, this.password = false});
  final String label;
  final bool password;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey[800],
        width: 1.0,
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Colors.grey[800],
          ),
          enabledBorder: border,
          border: border,
          suffixIcon: password
              ? Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: UnconstrainedBox(
                  child: Image.asset(
                    'assets/batman_logo.png',
                    height: 15,
                  ),
                ),
              )
              : null,
         ),
      ),
    );
  }
}

