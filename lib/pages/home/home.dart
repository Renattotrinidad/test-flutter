import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba_ima/pages/home/widgets/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  late int pageCurrent = 0;

  _updateCurrentPage(index) {
    setState(() {
      pageCurrent = index;
    });
    controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PagesWidget(controller: controller),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 70,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.black38, width: 1.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => _updateCurrentPage(0),
                      icon: Icon(
                        FontAwesomeIcons.house,
                        color: pageCurrent == 0
                            ? Theme.of(context).primaryColor
                            : Colors.black38,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _updateCurrentPage(1),
                      icon: Icon(
                        FontAwesomeIcons.tools,
                        color: pageCurrent == 1
                            ? Theme.of(context).primaryColor
                            : Colors.black38,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _updateCurrentPage(2),
                      icon: Icon(
                        FontAwesomeIcons.userLarge,
                        color: pageCurrent == 2
                            ? Theme.of(context).primaryColor
                            : Colors.black38,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _updateCurrentPage(3),
                      icon: Icon(
                        FontAwesomeIcons.bars,
                        color: pageCurrent == 3
                            ? Theme.of(context).primaryColor
                            : Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
