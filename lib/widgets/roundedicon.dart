import 'package:flutter/material.dart';

class RoundedIcoun extends StatelessWidget {
  final String ImgUrl;
  const RoundedIcoun({super.key, required this.ImgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 0.6),
            ],
            image: DecorationImage(
              image: AssetImage(ImgUrl),
            )),
      ),
    );
  }
}
