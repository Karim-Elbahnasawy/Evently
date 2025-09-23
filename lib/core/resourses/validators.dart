abstract class Validators {
  
  static String? validateName(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'Name is required';
    }
    if (name.length < 6) {
      return 'Name must be 6 charcters';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    RegExp regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (email == null || email.trim().isEmpty) {
      return 'Email is required';
    }
    if (!regExp.hasMatch(email)) {
      return 'Email bad format';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    RegExp regExp = RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
    );
    if (password == null || password.trim().isEmpty) {
      return 'Password is required';
    }
    if (!regExp.hasMatch(password)) {
      return 'Weak Password';
    }
    return null;
  }

  static String? validateRePassword(String? rePassword) {
    if (rePassword == null || rePassword.trim().isEmpty) {
      return 'Confirm password is required';
    }
    return null;
  }
}
