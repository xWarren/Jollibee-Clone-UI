import '../resources/screen.dart';
import 'data.dart';

class SecondContent extends StatelessWidget {
  const SecondContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController sendingEmailController = TextEditingController();
    return Container(
      height: Get.height / 1.9,
      width: Get.width,
      color: ColorPalette.appBarColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextData.stayConnectedText,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Ionicons.logo_instagram,
                    size: 25.0,
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Ionicons.logo_facebook,
                    size: 25.0,
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Ionicons.logo_twitter,
                    size: 25.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextData.stayUptoDateText,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextData.exclusiveOffersText,
          ),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.topRight,
            fit: StackFit.loose,
            clipBehavior: Clip.hardEdge,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 120),
                child: TextField(
                  controller: sendingEmailController,
                  style: TextStyles.enterEmailStyle,
                  decoration: const InputDecoration(
                    label: TextData.enterEmailText,
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                height: 30,
                right: 48,
                top: 20,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorPalette.signUpColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)))),
                    child: TextData.signUpButtonText),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextData.usefulLinksText,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listviewmenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      elevation: 0,
                    ),
                    child: Text(
                      listviewmenu[index].titles,
                      style: TextStyles.signUpButtonStyle,
                    ),
                  )
                ]);
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(child: TextData.copyrightText)),
        ],
      ),
    );
  }
}
