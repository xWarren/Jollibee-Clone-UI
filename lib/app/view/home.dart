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
