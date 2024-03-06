extension extString on String {
  bool get isValidString {
    return isNotEmpty;
  }

  bool get isValidEmail {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidFirstName {
    final firstNameRegExp = RegExp(r'^[a-z A-Z]+$');
    return firstNameRegExp.hasMatch(this);
  }

  bool get isValidMiddleName {
    final middleNameRegExp = RegExp(r'^[a-z A-Z]+$');
    return middleNameRegExp.hasMatch(this);
  }

  bool get isValidLastName {
    final lastNameRegExp = RegExp(r'^[a-z A-Z]+$');
    return lastNameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*]).{8,}$');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r'^[1-9][0-9]{9}$');
    return phoneRegExp.hasMatch(this);
  }

  bool get isValidCode {
    final codeRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return codeRegExp.hasMatch(this);
  }

  bool get isValidAddress {
    final addressRegExp = RegExp(r'\d{1,5}\s\w.\s(\b\w*\b\s){1,2}\w*\.');
    return addressRegExp.hasMatch(this);
  }

  bool get isValidPincode {
    final pincodeRegExp = RegExp(r'^[1-9][0-9]{5}$');
    return pincodeRegExp.hasMatch(this);
  }

  bool get isValidAadharCardNumber {
    final aadharCardNumberRegExp =
        RegExp(r'^[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}$');
    return aadharCardNumberRegExp.hasMatch(this);
  }

  bool isValidDate(String date) {
    final dateRegExp = RegExp(r'^\d{2}-\d{2}-\d{4}$');
    return dateRegExp.hasMatch(date);
  }

  bool isValidNonNegativeAmount(String amount) {
    final nonNegativeAmountRegExp = RegExp(r'^\d+(\.\d+)?$');
    return nonNegativeAmountRegExp.hasMatch(amount);
  }

  bool get isValidPanCardNumber {
    final pancardNumberRegExp = RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$');
    return pancardNumberRegExp.hasMatch(this);
  }

  bool get isValidDrivingLicenceNumber {
    final drivingLicenceNumberRegExp = RegExp(
        r'^(([A-Z]{2}[0-9]{2})|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$');
    return drivingLicenceNumberRegExp.hasMatch(this);
  }

  bool get isValidPassportNumber {
    final passportNumberRegExp = RegExp(r'^(?!^0+$)[a-zA-Z0-9]{3,20}$');
    return passportNumberRegExp.hasMatch(this);
  }

  bool get isValidBankName {
    final bankNameRegExp = RegExp(r'^[a-zA-Z ]$');
    return bankNameRegExp.hasMatch(this);
  }

  bool get isValidAccountNumber {
    final accountNumberRegExp = RegExp(r'^[0-9]{9,18}');
    return accountNumberRegExp.hasMatch(this);
  }

  bool get isValidIFSCCode {
    final ifscCodeRegExp = RegExp(r"^[A-Z]{4}0[A-Z0-9]{6}$");
    return ifscCodeRegExp.hasMatch(this);
  }

  bool get isValidMicrCode {
    final micrCodeRegExp = RegExp(r'^[0-9]{1,9}$');
    return micrCodeRegExp.hasMatch(this);
  }

  bool get isValidPolicyNumber {
    final policyNumberRegExp = RegExp(r'^(?=.*[A-Z])(?=.*[0-9]).+$');
    return policyNumberRegExp.hasMatch(this);
  }
}
