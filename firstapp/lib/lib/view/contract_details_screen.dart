import 'package:flutter/material.dart';

class ContractDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contract Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Seller Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'اسم البائع :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      ' رقم بطاقه البائع :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'مكان إقامه البائع :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'تاريخ إصدار بطاقه البائع :',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Buyer Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'اسم المشتري :',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'رقم بطاقة المشتري :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'مكان إقامه المشتري :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'تاريخ إصدار بطاقة المشتري :',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            //property details

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'عنوان العقار :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'ملكيه العقار :',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'طريقه الحصول على الملكيه :',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Edit contract
                  },
                  child: Text('Edit'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Cancel contract
                  },
                  child: Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
