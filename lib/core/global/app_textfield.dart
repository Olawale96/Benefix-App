
import 'package:benefixs/core/theme/colors.dart';
import 'package:flutter/material.dart';


class AppTextField extends StatelessWidget {
  final String? hintText;
  const AppTextField({
    super.key,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 1.5),
                blurRadius: 4,
                spreadRadius: 1,
                color: Color.fromRGBO(27, 26, 26, 0.213))
          ]),
      child: TextFormField(
        cursorColor: BenefixColors.cursorColor,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
          hintText: hintText,
          hintStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: BenefixColors.darkGray),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: Color.fromARGB(191, 139, 139, 139))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: Color.fromARGB(191, 139, 139, 139))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: Color.fromARGB(190, 139, 139, 139))),
        ),
      ),
    );
  }
}
