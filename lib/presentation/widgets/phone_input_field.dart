import 'package:flutter/material.dart';

class PhoneInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String? errorText;

  const PhoneInputField({super.key, required this.onChanged, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Введите номер телефона',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(height: 4),
          TextField(
            keyboardType: TextInputType.phone,
            onChanged: (val) {
              final digits = val.replaceAll(RegExp(r'\D'), '');
              final normalizedPhone = digits.startsWith('996')
                  ? digits
                  : '996$digits';
              onChanged(normalizedPhone);
            },
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone, size: 20),
              prefixIconConstraints: const BoxConstraints(minWidth: 32),
              prefixText: '+996 ',
              prefixStyle: const TextStyle(color: Colors.black, fontSize: 16),
              hintText: 'XXX XX XX XX',
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
              errorText: errorText,
            ),
          ),
        ],
      ),
    );
  }
}
