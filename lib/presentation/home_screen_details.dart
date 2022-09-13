import 'package:cubit_state_management_with_gridview/cubit/home/model/home_model.dart';
import 'package:flutter/material.dart';

class HomeScreenDetails extends StatelessWidget {
  const HomeScreenDetails(
      {Key? key, required this.productList, required this.index})
      : super(key: key);

  final List<HomeModel> productList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cubit State Management'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              productList[index].detail.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize:
                  MediaQuery
                      .of(context)
                      .size
                      .height / 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
