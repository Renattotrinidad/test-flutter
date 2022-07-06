import 'package:flutter/material.dart';
import 'package:prueba_ima/pages/calculator/widgets/header.dart';
import 'package:prueba_ima/painter/circle_register.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          HeaderCalculatorWidget(size: size),
          const SizedBox(height: 20.0),
          SizedBox(
            width: size.width,
            height: size.height * .4,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: size.width * .55,
                    height: size.width * .55,
                    child: CustomPaint(
                      painter: CircleChart(currentIndex: 2),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '\$4,372',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'per month',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const Positioned(
                  top: 40.0,
                  left: 40.0,
                  child: Text(
                    'Insurance',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 100.0,
                  left: 10.0,
                  child: Text(
                    'Poperty \ntaxes',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  right: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Principal \n& Interest',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '62%',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF69F0AE),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
