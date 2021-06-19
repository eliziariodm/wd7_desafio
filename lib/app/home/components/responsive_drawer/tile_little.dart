import 'package:flutter/material.dart';

class TileLittle extends StatelessWidget {
  final IconData? iconConfig;
  final String? textConfig;
  final Function? onConfig;

  const TileLittle({this.iconConfig, this.textConfig, this.onConfig});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: Icon(
          iconConfig,
          color: Colors.black,
        ),
        title: Text(
          textConfig!,
          style: TextStyle(fontSize: 10, color: Colors.black),
        ),
        onTap: onConfig as void Function()?,
      ),
    );
  }
}
