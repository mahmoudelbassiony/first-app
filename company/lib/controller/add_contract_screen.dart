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
            // Property Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Property Address:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '123 Main St, Anytown, USA',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Property Type:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Single Family Home',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Contract Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Contract Type:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Rental Agreement',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Contract Start Date:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '2024-05-01',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Contract End Date:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      '2025-04-30',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tenant Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Tenant Name:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'John Doe',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Tenant Email:',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'johndoe@example.com',
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