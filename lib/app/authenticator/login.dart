import 'package:flutter/gestures.dart';
import 'package:jolibee_app_clone/app/resources/second_content.dart';

import '../resources/drawer.dart';
import '../resources/screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isVisible = true;
  bool isExpanded = false;
  int emailLength = 0;
  int passwordLength = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      appBar: buildAppBar(),
      drawer: const HeaderDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            _buildSignInText(),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Form(
                  child: Column(
                    children: [
                      _buildEmail(),
                      const SizedBox(height: 10),
                      _buildPassword(),
                      const SizedBox(height: 10),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buildCheckBox(), _buildForgotPassword()],
            ),
            const SizedBox(height: 10),
            _buildPrivacy(),
            const SizedBox(height: 40),
            _buildSignInButton(context),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            const SizedBox(height: 30),
            _buildRegisterText(),
            const SizedBox(height: 30),
            _buildCreateAccountButton(context),
            const SizedBox(height: 15),
            _buildOrText(),
            const SizedBox(height: 15),
            _buildFacebookButton(context),
            const SecondContent()
          ],
        ),
      ),
    );
  }

  Row _buildOrText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [TextData.orText],
    );
  }

  Padding _buildFacebookButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.facebookButtonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Ionicons.logo_facebook),
                    SizedBox(width: 10),
                    TextData.facebookButtonText,
                  ],
                )),
          ),
          const SizedBox(height: 15),
          _buildTermsAndConditions(),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  Padding _buildTermsAndConditions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
              child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'By registering/signing in, you agree to Jollibee’s',
              style: TextStyles.checkBoxStyle,
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.homeScreen);
                    },
                  text: ' Privacy Policy',
                  style: TextStyles.privacyStyle,
                ),
                const TextSpan(text: ' and'),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.homeScreen);
                    },
                  text: ' Terms And Conditions',
                  style: TextStyles.privacyStyle,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Padding _buildCreateAccountButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: TextData.createAccountButtonText),
          ),
        ],
      ),
    );
  }

  Padding _buildSignInText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TextData.signInText,
          TextData.signInSubtitle,
        ],
      ),
    );
  }

  Padding _buildRegisterText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TextData.registerButtonText,
          TextData.registerSubtitleButtonText,
        ],
      ),
    );
  }

  Padding _buildSignInButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: TextData.signInButtonText),
          ),
        ],
      ),
    );
  }

  Padding _buildPrivacy() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Expanded(
              child: RichText(
            text: TextSpan(
              text: 'This site is protected by reCAPTCHA and the Google',
              style: TextStyles.checkBoxStyle,
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.homeScreen);
                    },
                  text: ' Privacy Policy',
                  style: TextStyles.privacyStyle,
                ),
                const TextSpan(text: ' and'),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.homeScreen);
                    },
                  text: ' Terms of Service',
                  style: TextStyles.privacyStyle,
                ),
                const TextSpan(text: ' apply.'),
              ],
            ),
          )),
        ],
      ),
    );
  }

  TextButton _buildForgotPassword() =>
      TextButton(onPressed: () {}, child: TextData.forgotPasswordText);

  Wrap _buildCheckBox() {
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
      Checkbox(
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(2.5)),
          side: const BorderSide(
            color: ColorPalette.checkboxColor,
          ),
          checkColor: Colors.white,
          value: isVisible,
          activeColor: ColorPalette.checkboxColor,
          onChanged: (value) {
            setState(() {
              isVisible = !isVisible;
            });
          }),
      TextData.checkBoxText
    ]);
  }

  TextField _buildPassword() {
    return TextField(
      controller: passwordController,
      style: const TextStyle(fontWeight: FontWeight.bold),
      textInputAction: TextInputAction.done,
      obscureText: isVisible,
      onChanged: (text) {
        setState(() {
          passwordLength = text.length;
        });
      },
      decoration: InputDecoration(
          label: Text(
            "Password",
            style: passwordLength < 1
                ? const TextStyle(
                    color: Colors.grey,
                  )
                : const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w900),
          ),
          fillColor: Colors.black,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: isVisible ? const Text("Show") : const Text("Hide"),
            ),
          )),
    );
  }

  TextField _buildEmail() {
    return TextField(
      controller: emailController,
      style: const TextStyle(fontWeight: FontWeight.bold),
      textInputAction: TextInputAction.next,
      onChanged: (text) {
        setState(() {
          emailLength = text.length;
        });
      },
      decoration: InputDecoration(
        label: GestureDetector(
          child: Text(
            "Email",
            style: emailLength < 1
                ? const TextStyle(
                    color: Colors.grey,
                  )
                : const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
        fillColor: Colors.black,
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: ColorPalette.appBarColor,
      centerTitle: true,
      title: Image.asset(Assets.homeLogo, scale: 2.0),
      actions: [
        Center(
            child: GestureDetector(
                onTap: () {}, child: TextData.socialMediaTitle)),
        const SizedBox(width: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Assets.bagIcon, scale: 1.5),
            Positioned(
              top: 15,
              right: 22,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
