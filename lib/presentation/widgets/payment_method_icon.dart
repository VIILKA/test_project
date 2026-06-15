import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/entities/payment_method.dart';

class PaymentMethodIcon extends StatelessWidget {
  final PaymentMethod method;
  final bool disabled;

  const PaymentMethodIcon({
    super.key,
    required this.method,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 24, height: 24, child: Center(child: _child));
  }

  Widget get _child {
    switch (method) {
      case PaymentMethod.oDengi:
        return Opacity(
          opacity: disabled ? 0.45 : 1,
          child: SvgPicture.asset('assets/icons/o.svg', width: 24, height: 24),
        );
      case PaymentMethod.mbank:
        return Opacity(
          opacity: disabled ? 0.45 : 1,
          child: Image.asset(
            'assets/icons/mbank.png',
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        );
      case PaymentMethod.account:
        return const Icon(Icons.person_outline, size: 18, color: Colors.black);
      case PaymentMethod.cash:
        return const Icon(
          Icons.account_balance_wallet_outlined,
          size: 17,
          color: Colors.black,
        );
    }
  }
}
