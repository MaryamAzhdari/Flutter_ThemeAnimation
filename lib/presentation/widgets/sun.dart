import 'package:animation_app_mode/presentation/widgets/sun_shine.dart';
import 'package:flutter/material.dart';

class Sun extends StatelessWidget {
  const Sun({super.key});

  @override
  Widget build(BuildContext context) {
    return SunShine(
      radius: 160,
      child: SunShine(
        radius: 120,
        child: SunShine(
          radius: 80,
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xDDFC554F),
                    Color(0xDDFFF79E),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                )),
          ),
        ),
      ),
    );
  }
}
