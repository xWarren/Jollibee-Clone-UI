import '../resources/screen.dart';

class TextStyles {
  static const actionStyle =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700);
  static const signInStyle =
      TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w900);
  static const signInSubtitleStyle = TextStyle(
    fontSize: 15,
    color: Colors.black,
  );
  static const checkBoxStyle = TextStyle(
    fontSize: 15,
    color: Colors.grey,
  );
  static const forgotPasswordStyle = TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 15,
      color: ColorPalette.forgotPasswordColor);
  static const privacyStyle =
      TextStyle(fontSize: 15, color: ColorPalette.forgotPasswordColor);
  static const signInButtonStyle =
      TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w900);
  static const orStyle =
      TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w800);
}
