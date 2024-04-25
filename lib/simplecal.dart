import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class simplecal extends StatelessWidget {
  const simplecal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    centerTitle:true,
        backgroundcolor: colors.blue,
        title:Text(
    'simple calu',
        style(
    color:colors.white,
    ),
    )
    )

  }
}
