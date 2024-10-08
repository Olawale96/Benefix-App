import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyWidget extends StatefulWidget {
  final String quote;
  final double textSize;
  final Widget copy;
  final Widget copied;

  const CopyWidget(
      {super.key,
      required this.quote,
      this.textSize = 20,
      required this.copy,
      required this.copied});

  @override
  // ignore: library_private_types_in_public_api
  _CopyWidgetState createState() => _CopyWidgetState();
}

class _CopyWidgetState extends State<CopyWidget> {
  int name = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: widget.quote));
        setState(() {
          name = 1;
          Future.delayed(Duration(milliseconds: 3000), () {
            setState(() {
              name = 0;
            });
          });
        });
      },
      child: name == 0 ? widget.copy : widget.copied,
    );
  }
}
