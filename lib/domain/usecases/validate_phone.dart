class ValidatePhoneUseCase {
  bool call(String phone) {
    final cleanPhone = phone.replaceAll(RegExp(r'\D'), '');

    if (cleanPhone.length != 12) {
      return false;
    }

    if (!cleanPhone.startsWith('996')) {
      return false;
    }

    return true;
  }
}
