import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppsView extends StatefulWidget {
  const AppsView({super.key});

  @override
  State<AppsView> createState() => _AppsViewState();
}

class _AppsViewState extends State<AppsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover all bills'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Search categories, billers, recharges & more',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SectionTitle('Monthly Payments'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.home, 'House Help'),
              GridItem(Icons.apartment, 'Rent'),
              GridItem(Icons.family_restroom, 'Family'),
              GridItem(Icons.miscellaneous_services, 'Services'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('Recharges'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.phone_android, 'Mobile '),
              GridItem(Icons.directions_car, 'FASTag'),
              GridItem(Icons.phone_iphone, 'Mobile'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('Finances'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.account_balance, 'Loan EMI'),
              GridItem(Icons.credit_card, 'Credit Card'),
              GridItem(Icons.health_and_safety, 'Insurance'),
              GridItem(Icons.savings, 'Recurring'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('Essentials'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.lightbulb, 'electricity'),
              GridItem(Icons.gas_meter_outlined, 'Gas Cylinder'),
              GridItem(Icons.tv, 'BorderBade'),
              GridItem(Icons.picture_in_picture_alt, 'Piped GAS'),
              GridItem(Icons.water_drop, 'Water'),
              GridItem(Icons.label_important, 'Landline'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('Entertainment'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.cabin_rounded, 'DTH'),
              GridItem(Icons.subscript_outlined, 'Subscription'),
              GridItem(Icons.cable, 'Cable TV'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('HOME & Rent'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.warehouse, 'Apartment'),
              GridItem(Icons.task, 'munici tax'),
              GridItem(Icons.accessibility_new_outlined, 'Club'),
              GridItem(Icons.savings, 'Manci service'),
              GridItem(Icons.security, 'housing seu.'),
              GridItem(Icons.car_rental, 'Rental'),
            ]),
            const SizedBox(height: 30),
            SectionTitle('Other'),
            const SizedBox(height: 20),
            _buildGrid([
              GridItem(Icons.edit_calendar_outlined, 'Education'),
              GridItem(Icons.local_hospital, 'Hospital'),
              GridItem(Icons.travel_explore, 'Travel HUB'),
              GridItem(Icons.money, 'Donation'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget SectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildGrid(List<Widget> items) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      children: items,
    );
  }

  Widget GridItem(IconData icon, String title) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Icon(icon, size: 35, color: Colors.green),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: GoogleFonts.ubuntu(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),

      ],
    );
  }
}
