import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final String placeholder;
  const TextFieldWidget({
    Key? key,
    this.obscureText = false,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .8,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: placeholder,
            hintStyle:
                const TextStyle(fontSize: 18.0, color: Color(0xFFDDDDDD)),
            suffixIcon: obscureText
                ? const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Color(0xFFDDDDDD),
                    size: 40.0,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
