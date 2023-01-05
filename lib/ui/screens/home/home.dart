import 'package:amt/data/common/colors.dart';
import 'package:amt/data/common/constants.dart';
import 'package:amt/ui/widgets/dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Messages',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: ThemeColors.defaultTextColor, fontSize: 18)),
            actions: const [
              Icon(CupertinoIcons.search),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: ThemeColors.floatingLabelColor,
                )),
                Tab(
                    icon: Icon(
                  CupertinoIcons.cart,
                  color: ThemeColors.floatingLabelColor,
                )),
                Tab(
                    icon: Icon(
                  CupertinoIcons.car,
                  color: ThemeColors.floatingLabelColor,
                ))
              ],
            ),
          ),
          body: TabBarView(
            physics: const BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: [
              Padding(
                padding: EdgeInsets.all(ThemeConstants.themePadding),
                child: const Messages(),
              ),
              Padding(
                padding: EdgeInsets.all(ThemeConstants.themePadding),
                child: const Messages(),
              ),
              Padding(
                padding: EdgeInsets.all(ThemeConstants.themePadding),
                child: const Messages(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Stack(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      ThemeConstants.borderLargeRadius,
                    ),
                    child: Image.network(
                        'https://png.pngtree.com/png-clipart/20190924/original/pngtree-user-vector-avatar-png-image_4830521.jpg'),
                  ),
                ),
                const Positioned(
                  right: 0,
                  bottom: 0,
                  child: DotWidget(dotColor: Color(0xffCBD5E1)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'mohammad tahourian',
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'mohammad tahourian',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Visibility(
                    visible: true,
                    child: DotWidget(
                      dotColor: Theme.of(context).colorScheme.primary,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '8:00',
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ))
          ]),
        );
      },
    );
  }
}
