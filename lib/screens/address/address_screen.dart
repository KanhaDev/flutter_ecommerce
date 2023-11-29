import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';

class AddressScreen extends StatefulWidget {
  static const String routeName = '/user';

  @override
  _MyFormState createState() => _MyFormState();

  AddressScreen({super.key});
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => AddressScreen());
  }
}


class _MyFormState extends State<AddressScreen> {
  
  TextEditingController fullNameController = TextEditingController();
  TextEditingController currentAddressController = TextEditingController();
  TextEditingController currentCityController = TextEditingController();
  TextEditingController currentZipController = TextEditingController();

  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController permanentCityController = TextEditingController();
  TextEditingController permanentZipController = TextEditingController();

  bool sameAddress = true;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Address'),




body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextField(
              controller: currentAddressController,
              decoration: InputDecoration(labelText: 'Current Address'),
            ),
            TextField(
              controller: currentCityController,
              decoration: InputDecoration(labelText: 'Current City'),
            ),
            TextField(
              controller: currentZipController,
              decoration: InputDecoration(labelText: 'Current Zip Code'),
            ),
            CheckboxListTile(
              title: Text('Same as Permanent Address'),
              value: sameAddress,
              onChanged: (value) {
                setState(() {
                  sameAddress = value!;
                });
              },
            ),
            if (!sameAddress)
              Column(
                children: [
                  TextField(
                    controller: permanentAddressController,
                    decoration: InputDecoration(labelText: 'Permanent Address'),
                  ),
                  TextField(
                    controller: permanentCityController,
                    decoration: InputDecoration(labelText: 'Permanent City'),
                  ),
                  TextField(
                    controller: permanentZipController,
                    decoration: InputDecoration(labelText: 'Permanent Zip Code'),
                  ),
                ],
              ),
          ],
        ),
      ),
    



      bottomNavigationBar: CustomNavBar(),
    );
  }
}