import '../resources/screen.dart';

class ListViewMenu {
  final String routes;
  final String titles;
  ListViewMenu({required this.routes, required this.titles});
}

List<ListViewMenu> listviewmenu = [
  ListViewMenu(routes: Routes.homeScreen, titles: 'About'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'Stores'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'Privacy Policy'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'T&C'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'Feedback'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'Customer Cares'),
  ListViewMenu(routes: Routes.homeScreen, titles: 'Stay Connected'),
];

class MenuList {
  final String routes;
  final String titles;
  MenuList({required this.routes, required this.titles});
}

List<MenuList> menulist = [
  MenuList(routes: Routes.homeScreen, titles: 'Best Sellers'),
  MenuList(routes: Routes.homeScreen, titles: 'New Products'),
  MenuList(routes: Routes.homeScreen, titles: 'Family Meals'),
  MenuList(routes: Routes.homeScreen, titles: 'Breakfast'),
  MenuList(routes: Routes.homeScreen, titles: 'Chickenjoy'),
  MenuList(routes: Routes.homeScreen, titles: 'Burgers'),
  MenuList(routes: Routes.homeScreen, titles: 'Jolly Spaghetti'),
  MenuList(routes: Routes.homeScreen, titles: 'Burger Steak'),
  MenuList(routes: Routes.homeScreen, titles: 'Chicken Sandwich'),
  MenuList(routes: Routes.homeScreen, titles: 'Jolly Hotdog & Pies'),
  MenuList(routes: Routes.homeScreen, titles: 'Palabok'),
  MenuList(routes: Routes.homeScreen, titles: 'Fries & Sides'),
  MenuList(routes: Routes.homeScreen, titles: 'Desserts'),
  MenuList(routes: Routes.homeScreen, titles: 'Beverages'),
  MenuList(routes: Routes.homeScreen, titles: 'Jolly Kiddie Meal'),
];
