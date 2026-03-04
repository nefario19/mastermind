import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HiringButton extends StatelessWidget {
  const HiringButton({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'taif@example.com',
      query:
          'subject=Volgend gesprek&body=Beste Taif,\nWij hebben enorm genoten van je app. Wij willen jou uitnodigen voor een volgend gesprek. Deze keer wel op tijd komen 😏.',
    );
    return GestureDetector(
      onTap: () async {
        await launchUrl(emailUri);
      },
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: color.withValues(alpha: 0.4),
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            '>> Hire Taif 😏 <<',
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: 15,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
