import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay/screen/dashboard/category_view.dart';

import '../../weight/dott_divider.dart';


class DashView extends StatelessWidget {
  const DashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 18,
              ),
            ),
            SizedBox(width: 1), // Add a SizedBox to create space
          ],
        ),
        title: Text(
          'Pay',
          style: GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.qr_code),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 16,
            ),
          ),
          const SizedBox(width: 10), // Removed const as it's unnecessary
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12,bottom: 26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTopMenuItem(Icons.bolt, 'Activate\n UPI Lite'),
                    _buildTopMenuItem(Icons.logout, 'Pay Mobile \nNumber'),
                    _buildTopMenuItem(Icons.account_balance, 'Check \nBalance'),
                  ],
                ),
              ),
              const DottedLine(
                color: Colors.grey,
                height: 2,
                width: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My UPI ID : ABCD123456@yesg',
                    style: GoogleFonts.ubuntu(fontSize: 12, fontWeight: FontWeight.w200),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy,size: 20,),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'My bills',
                    style: GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.ac_unit, size: 16, color: Colors.black),
                        Icon(Icons.currency_rupee, size: 16, color: Colors.black),
                        Text(
                          '0',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Number of containers
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: _buildBillContainer(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Bills and Recharges',
                style: GoogleFonts.ubuntu(fontSize: 14, fontWeight: FontWeight.bold),
              ),
               CategoriesView(),
              const SizedBox(height: 25),
              Text(
                'UPI Options',
                style: GoogleFonts.ubuntu(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.4),
                child: Column(
                  children: [
                    _buildUpiOption(Icons.menu_open_sharp, 'My Translation'),
                    const Divider(height: 3,),
                    _buildUpiOption(Icons.opacity, 'My BIll & recharges'),
                    const Divider(height: 3,),
                    _buildUpiOption(Icons.shape_line_rounded, 'Self Transfer'),
                    const Divider(height: 3,),
                    _buildUpiOption(Icons.bolt, 'Bank Transfer'),
                    const Divider(height: 3,),
                    _buildUpiOption(Icons.account_balance, 'More UPI Option'),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Receive Money',
                    style: GoogleFonts.ubuntu(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 150,),
                  Image.asset('assest/images/customer-support.png',height: 30,width: 30,),
                ],
              ),
              Text(
                '0 of 3 complete',
                style: GoogleFonts.ubuntu(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade400,
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 210,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3, // Number of containers
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: _buildReceiveMoney(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15,),
              Center(
                child: Text(
                  'How to use UPI safety?',
                  style: GoogleFonts.ubuntu(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10,),
              const Center(
                child: SizedBox(
                  width: 180,
                  child: DottedLine(
                    color: Colors.grey,
                    height: 2,
                    width: 2,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Center(
                child: Text(
                  'Pay(Payments service Viz,TRAP,BAPS)',
                  style: GoogleFonts.robotoCondensed(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ),
              Center(
                child: Text(
                  'reel Service Private Limited Regulation by NCI.',
                  style: GoogleFonts.robotoCondensed(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopMenuItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 25, color: Colors.greenAccent.shade700),
        const SizedBox(height: 8),
        Text(
          text,
          style: GoogleFonts.ubuntu(fontSize: 13, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildBillContainer() {
    return Container(
      height: 210,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Image.asset(
                  'assest/images/customer-support.png',
                  height: 20,
                  width: 20,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'My Contact',
              style: GoogleFonts.ubuntu(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            Text(
              '1234567890',
              style: GoogleFonts.ubuntu(fontSize: 8, fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  // Button action here
                },
                child: Container(
                  height: 35,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Check for new bill',
                      style: GoogleFonts.ubuntu(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpiOption(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(12),
            child: Icon(icon),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.ubuntu(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          const Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
    );
  }
}
Widget _buildReceiveMoney() {
  return Container(
    height: 30,
    width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.qr_code, size: 30),
            onPressed: () {},
          ),
          const SizedBox(height: 4),
          Text(
            'Secure your QR',
            style: GoogleFonts.robotoCondensed(fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
