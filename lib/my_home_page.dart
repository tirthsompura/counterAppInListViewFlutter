import 'package:flutter/material.dart';

import 'model/demo_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter counter app demo"),
      ),
      body: ListView.builder(
        itemCount: demoModel.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child:
                        Image.asset(demoModel[index].productImage.toString()),
                  ),
                  Text(
                    demoModel[index].productName.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Material(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                          ),
                          child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(Icons.remove),
                                color: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    if (demoModel[index].quantity < 2) {
                                    } else {
                                      demoModel[index].quantity--;
                                    }
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        demoModel[index].quantity.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Material(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                          ),
                          child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            child: Center(
                              child: IconButton(
                                icon: const Icon(Icons.add),
                                color: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    demoModel[index].quantity++;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
