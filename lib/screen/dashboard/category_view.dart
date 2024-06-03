import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pay/screen/apps/appsview.dart';

class CategoriesView extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assest/images/customer-support.png', // corrected path
      'title': 'Electric bill', // corrected title
    },
    {
      'image': 'assest/images/customer-support.png', // corrected path
      'title': 'FastTag',
    },
    {
      'image': 'assest/images/customer-support.png', // corrected path
      'title': 'Mobile Recharge', // corrected title
    },
    {
      'image': 'assest/images/customer-support.png', // corrected path
      'title': 'DTH',
    },
    {
      'image': 'assest/images/customer-support.png', // corrected path
      'title': 'Credit Card', // corrected title
    },
    {
      'image': 'assest/images/right-raunde-arrow.png', // corrected path
      'title': 'View more bills', // corrected title
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 14),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8.0),
          itemCount: items.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 0.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (items[index]['title'] == 'View more bills') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AppsView()),
                  );
                }
              },
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        items[index]['image'],
                        height: 30,
                        width: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    items[index]['title'],
                    style: GoogleFonts.ubuntu(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}