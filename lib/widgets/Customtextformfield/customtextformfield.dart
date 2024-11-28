import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final bool readOnly;
  final TextEditingController? controller;
  final TextStyle? hintstyle;
  final String? hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? errorStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType type; // Keyboard type
  final String? value;
  final TextStyle? style;
  final int maxlines;
  final Function(String)? onChanged; // Added onChanged callback

  const CustomTextFormField({
    super.key,
    this.hintstyle,
    this.errorStyle,
    this.readOnly = false,
    this.style,
    this.controller,
    this.maxlines = 1,
    this.type = TextInputType.text, // Default to text keyboard
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.enabledBorder,
    this.focusedBorder,
    this.prefixIcon,
    this.suffixIcon,
    this.value,
    this.onChanged,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.value,
      readOnly: widget.readOnly,
      style: Theme.of(context).textTheme.displaySmall,
      maxLines: widget.maxlines,
      keyboardType: widget.type, // Assign the keyboard type
      controller: widget.controller,
      decoration: InputDecoration(
        errorStyle: widget.errorStyle ?? const TextStyle(color: Colors.red),
        hintStyle: widget.hintstyle ?? const TextStyle(color: Colors.white, fontSize: 16 ),
        hintText: widget.hintText,
        enabledBorder: widget.enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white ),
            ),
        focusedBorder: widget.focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white),
            ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : widget.suffixIcon,
      ),
      obscureText: widget.obscureText && _obscureText,
      validator: widget.validator,
      onChanged: widget.onChanged, 
    );
  }
}
