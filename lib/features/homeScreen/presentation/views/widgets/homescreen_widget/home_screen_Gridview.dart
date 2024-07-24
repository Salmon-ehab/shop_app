import 'package:flutter/widgets.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/homescreen_widget/home_screen_body.dart';
import 'package:shop_app/features/homeScreen/presentation/views/widgets/homescreen_widget/home_screen_itemlist.dart';

class HomeScreenListview extends StatelessWidget {
  const HomeScreenListview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemCount: Items.length,
        itemBuilder:(BuildContext context, int index) {
          return HomeScreenBody(image: Items[index].image, name: Items[index].name);
        } );
  }
}
