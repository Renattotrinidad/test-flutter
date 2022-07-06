import 'package:flutter/material.dart';

class HeaderCalculatorWidget extends StatelessWidget {
  const HeaderCalculatorWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      width: size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: Text(
              'Mortgage Calculator',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Property value'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              Text(
                'Term'.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                height: 40.0,
                width: size.width * .55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.black12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Text(
                      '500,000',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40.0,
                width: size.width * .30,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.black12)),
                child: const Center(
                  child: Text(
                    '15 years fixed',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20.0),
          _barIndicator(context, 'Interest rate'.toUpperCase(), '4.5%', ''),
          const SizedBox(height: 10.0),
          _barIndicator(
              context, 'Down payment'.toUpperCase(), '20%', '\$100,000'),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'Advanced',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
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
    );
  }

  Widget _barIndicator(
      BuildContext context, String label, String value, String title) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.5,
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Colors.black26,
                    minHeight: 6,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.0),
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }
}
