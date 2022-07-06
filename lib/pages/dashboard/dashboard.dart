import 'package:flutter/material.dart';
import 'package:prueba_ima/pages/dashboard/widgets/item.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .05, vertical: 10.0),
              child: const SafeArea(
                child: Text(
                  'My Dashboard',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ItemDashboardWidget(title: 'My Mortgage'.toUpperCase()),
            const SizedBox(height: 20.0),
            ItemDashboardWidget(title: 'Linked Accounts'.toUpperCase()),
          ],
        ),
      ),
    );
  }
}
