import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.12),
      child: const Text(
        "Hijri's trip",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Hiatus',
            fontSize: 116,
            color: CupertinoColors.white),
      ),
    );
  }
}
