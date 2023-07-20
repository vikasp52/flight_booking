class CustomValidation {
  static String? emptyValidation(String? val, String? errorMessage) {
    if (val == null || val.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  static String? passwordValidation(
    String? password,
  ) {
    if (password == null || password.isEmpty) {
      return 'Please enter confirm password';
    } else if (password.length < 8) {
      return 'Password should be atleast 8 digit';
    }
    return null;
  }

  static String? confirmPasswordValidation(
    String? password,
    String? confirmPassword,
  ) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Please enter confirm password';
    } else if (confirmPassword != password) {
      return 'Confirm password is not matching';
    }
    return null;
  }
}
