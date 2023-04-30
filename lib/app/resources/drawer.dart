import 'package:jolibee_app_clone/app/resources/data.dart';

import 'screen.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({super.key});

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorPalette.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        clipBehavior: Clip.none,
        children: <Widget>[
          SizedBox(
            height: Get.height / 9,
            child: DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: ColorPalette.appBarColor,
              ),
              child: Row(
                children: const [
                  Icon(
                    Ionicons.person_circle_outline,
                    color: Colors.white,
                    size: 50.0,
                  ),
                  TextData.drawerHeaderText,
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.homeScreen);
            },
            child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Ionicons.home_outline,
                      size: 18.0,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Ionicons.chevron_forward_outline,
                    size: 18.0,
                  ),
                )),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.homeScreen);
            },
            child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Ionicons.storefront_outline,
                      color: Colors.amber,
                      size: 18.0,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Stores",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                trailing: const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Ionicons.chevron_forward_outline,
                    size: 18.0,
                  ),
                )),
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              childrenPadding: EdgeInsets.zero,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.bellIcon,
                    width: 18.0,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              trailing: isExpanded
                  ? const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Ionicons.chevron_up_outline,
                        size: 18.0,
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(
                        Ionicons.chevron_forward_outline,
                        size: 18.0,
                      ),
                    ),
              onExpansionChanged: (bool _isExpanded) {
                setState(() {
                  isExpanded = _isExpanded;
                });
              },
              children: <Widget>[
                SizedBox(
                  height: Get.height / 1.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: menulist.length,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(menulist[index].titles),
                        onTap: () {
                          // Do something when item is tapped
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
