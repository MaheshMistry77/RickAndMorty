String getValidatedStringValue(String? value) {
  if (value == null) {
    return "";
  }

  if (value.isEmpty) {
    return "";
  }

  if (value == 'null' || value == 'Null') {
    return "";
  }
  return value;
}

String getValidatedStringValueForEditForm(String? value) {
  if (value == null) {
    return "";
  }

  if (value.isEmpty) {
    return "";
  }

  if (value == 'null' || value == 'Null') {
    return "";
  }
  return value;
}
