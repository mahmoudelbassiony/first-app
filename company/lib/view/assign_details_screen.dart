import 'package:company/controller/add_property_controller.dart';
import 'package:company/controller/get_property_controller.dart';
import 'package:company/model/property_model.dart';
import 'package:company/view/components/add_property_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssignDetailsScreen extends StatelessWidget {

  late PropertyModel model;

  AssignDetailsScreen({required this.model});

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

          children: [
          Form(
            key: _formkey,
            child: Column(children: [
              GetBuilder<GetPropertyController>(
                          init: GetPropertyController(),
                          builder: (controller) => AddPropertyData('broker email', 'broker email', Icons.email,
                          (value){
                            if(value == null){return 'Please enter some text';
                              }
                            },
                           (newvalue){
                            controller.brokerEmail = newvalue;
                            }
                            ),
                        ),
                      SizedBox(height: 20,),
                      GetBuilder<GetPropertyController>(
                          builder: (controller) => AddPropertyData('broker phone', 'broker phone', Icons.phone,
                          (value){
                            if(value == null){return 'Please enter some text';
                              }
                            },
                           (newvalue){
                            controller.brokerPhone = newvalue;
                            }
                            ),
                        ),
                      SizedBox(height: 20,),
            ],)
            ),
            SizedBox(height: 30,),
            GetBuilder<GetPropertyController>(
                    builder: (controller) =>ElevatedButton(
                      onPressed: () {
                        _formkey.currentState!.save();
                        if(_formkey.currentState!.validate()){
                          // controller.brokerEmail = model.brokerEmail;
                          // controller.brokerPhone = model.brokerPhone;
                          controller.locationn = model.locationn;
                          controller.amenty = model.amenty;
                          controller.area = model.area;
                          controller.description = model.description;
                          controller.downPayment = model.downPayment;
                          controller.installmentValue = model.installmentValue;
                          controller.noOfBaths = model.noOfBaths;
                          controller.noOfRooms = model.noOfRooms;
                          controller.paymentType = model.paymentType;
                          controller.price = model.price;
                          controller.type = model.type;
                          controller.addProperty();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(300, 50),
                        ),
                      child: const Text('Add',
                      style: TextStyle(
                        fontSize: 20
                      ),
                      ),
                    ),
                  ),
        ]),
      ),
    );
  }
}