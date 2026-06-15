import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String? errorText;

  const PhoneInputField({super.key, required this.onChanged, this.errorText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Введите номер телефона',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8FB),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: errorText == null
                    ? const Color(0xFFD5D5D5)
                    : const Color(0xFFE5484D),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 12),
                const Icon(
                  Icons.phone_outlined,
                  size: 20,
                  color: Color(0xFF53525F),
                ),
                const SizedBox(width: 8),
                const Text(
                  '+996',
                  style: TextStyle(color: Color(0xFF53525F), fontSize: 16),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [_PhoneInputFormatter()],
                    onChanged: (val) {
                      final digits = val.replaceAll(RegExp(r'\D'), '');
                      onChanged('996$digits');
                    },
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
            ),
          ),
          if (errorText != null) ...[
            const SizedBox(height: 4),
            Text(
              errorText!,
              style: const TextStyle(
                color: Color(0xFFE5484D),
                fontSize: 11,
                height: 1,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _PhoneInputFormatter extends TextInputFormatter {
  static final _nonDigits = RegExp(r'\D');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final cursorEnd = newValue.selection.end;
    final safeCursorEnd = cursorEnd < 0
        ? newValue.text.length
        : cursorEnd.clamp(0, newValue.text.length);
    final cursorText = newValue.text.substring(0, safeCursorEnd);
    final result = _normalize(
      newValue.text.replaceAll(_nonDigits, ''),
      cursorText.replaceAll(_nonDigits, '').length,
    );
    final formatted = _format(result.digits);

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(
        offset: _offsetForDigitCount(formatted, result.cursorDigitCount),
      ),
    );
  }

  _PhoneDigits _normalize(String digits, int cursorDigitCount) {
    var localDigits = digits;
    var localCursorDigitCount = cursorDigitCount;

    if (localDigits.startsWith('996') && localDigits.length > 9) {
      localDigits = localDigits.substring(3);
      localCursorDigitCount = localCursorDigitCount > 3
          ? localCursorDigitCount - 3
          : 0;
    }

    if (localDigits.length > 9) {
      localDigits = localDigits.substring(0, 9);
    }

    if (localCursorDigitCount > localDigits.length) {
      localCursorDigitCount = localDigits.length;
    }

    return _PhoneDigits(localDigits, localCursorDigitCount);
  }

  String _format(String digits) {
    final buffer = StringBuffer();

    for (var i = 0; i < digits.length; i++) {
      if (i > 0 && i % 3 == 0) {
        buffer.write(' ');
      }

      buffer.write(digits[i]);
    }

    return buffer.toString();
  }

  int _offsetForDigitCount(String text, int digitCount) {
    if (digitCount <= 0) {
      return 0;
    }

    var seenDigits = 0;
    for (var i = 0; i < text.length; i++) {
      if (!text[i].contains(_nonDigits)) {
        seenDigits++;
      }

      if (seenDigits == digitCount) {
        return i + 1;
      }
    }

    return text.length;
  }
}

class _PhoneDigits {
  final String digits;
  final int cursorDigitCount;

  const _PhoneDigits(this.digits, this.cursorDigitCount);
}
