import 'package:animated_social_media_app_ui/utils/themes/colors.dart';
import 'package:flutter/material.dart';


class UnderlineSelectors extends StatefulWidget {
  const UnderlineSelectors({super.key});

  @override
  UnderlineSelectorsState createState() => UnderlineSelectorsState();
}

class UnderlineSelectorsState extends State<UnderlineSelectors> {
  int _selectedIndex = 0;
  final List<String> galleryFilter = ['All', 'Photos', 'Videos'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 48,
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    galleryFilter[index],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                    height: 3,
                    width: index == _selectedIndex ? getWidth(index) : 0,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
  double getWidth(int index){
    if(index == 0){
      return 15;
    }else{
      return 30;
    }
  }
}
