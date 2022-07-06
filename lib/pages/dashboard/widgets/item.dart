import 'package:flutter/material.dart';

class ItemDashboardWidget extends StatelessWidget {
  final String title;
  const ItemDashboardWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: size.width * .05, vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
            width: size.width * .9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '961 Willoughby Ave',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width * .6,
                        child: Image.asset('assets/dashboard_image.png'),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        '\$440,000',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      const Text(
                        'Principal Outstanting',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Column(
                  children: [
                    _itemList(context, 'Next Payment', '\$4,372'),
                    const SizedBox(height: 20.0),
                    _itemList(context, 'Due Date', 'March 1, 2020'),
                    const SizedBox(height: 20.0),
                    _itemList(context, 'Last Payment', '\$4,372'),
                    const SizedBox(height: 20.0),
                    _itemList(context, 'Last Payment Date', 'February 1, 2020'),
                  ],
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: Container(
                    width: 60.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemList(BuildContext context, String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16.0,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
