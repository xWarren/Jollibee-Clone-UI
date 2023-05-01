import '../resources/drawer.dart';
import '../resources/screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.backgroundColor,
      appBar: buildAppBar(),
      drawer: const HeaderDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStackBanner(),
            const SizedBox(height: 50),
            _buildStackBestSellers(),
            _buildStackFamilyMeals(),
            _buildStackChickenjoy(),
            _buildStackBurgers(),
            _buildStackNewProducts(),
          ],
        ),
      ),
    );
  }

  Stack _buildStackNewProducts() {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            Assets.newProductsImage,
          ),
        ),
        Positioned(
          top: 170 / 1.0,
          left: 12 / 1.0,
          child: SizedBox(
            width: Get.width / 5.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.white))),
                child: TextData.stackSelectText),
          ),
        ),
      ],
    );
  }

  Stack _buildStackBurgers() {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            Assets.burgersImage,
          ),
        ),
        Positioned(
          top: 170 / 1.0,
          left: 12 / 1.0,
          child: SizedBox(
            width: Get.width / 5.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.white))),
                child: TextData.stackSelectText),
          ),
        ),
      ],
    );
  }

  Stack _buildStackChickenjoy() {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            Assets.chickenJoyImage,
          ),
        ),
        Positioned(
          top: 170 / 1.0,
          left: 12 / 1.0,
          child: SizedBox(
            width: Get.width / 5.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.white))),
                child: TextData.stackSelectText),
          ),
        ),
      ],
    );
  }

  Stack _buildStackFamilyMeals() {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            Assets.familyMealsImage,
          ),
        ),
        Positioned(
          top: 170 / 1.0,
          left: 12 / 1.0,
          child: SizedBox(
            width: Get.width / 5.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.white))),
                child: TextData.stackSelectText),
          ),
        ),
      ],
    );
  }

  Stack _buildStackBestSellers() {
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            Assets.bestSellersImage,
          ),
        ),
        Positioned(
          top: 170 / 1.0,
          left: 12 / 1.0,
          child: SizedBox(
            width: Get.width / 5.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Colors.white))),
                child: TextData.stackSelectText),
          ),
        ),
      ],
    );
  }

  Stack _buildStackBanner() {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(Assets.bannerImage),
        Positioned(
          top: 110 / 0.95,
          child: SizedBox(
            width: Get.width / 1.5,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorPalette.signUpColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: TextData.stackNewOrderText),
          ),
        )
      ],
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
                onTap: () {
                  Get.toNamed(Routes.loginScreen);
                },
                child: TextData.socialMediaTitle)),
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
