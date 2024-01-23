import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FlutterBootPlus()));
}

class FlutterBootPlus extends StatefulWidget {
  const FlutterBootPlus({super.key});

  @override
  State<FlutterBootPlus> createState() => _FlutterBootPlusState();
}

class _FlutterBootPlusState extends State<FlutterBootPlus> {
  @override
  Widget build(BuildContext context) {
    List<Icon> iconList = [
      const Icon(Icons.ele),
      const Icon(Icons.local_fire_department),
      const Icon(Icons.speed_outlined),
    ];

    List<String> titleList = [
      "Premium feature",
      "Priority access",
      "Ultra-fast"
    ];

    List<String> describeList = [
      "Plus subscribers have access to FlutterBoot+ and our latest beta features.",
      "You'll be able to use FlutterBoot+ even when demand is high",
      "Enjoy even faster response speeds when using FlutterBoot"
    ];

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 35.0),
                          child: Text(
                            "FlutterBoot Plus",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w900),
                          ),
                        ),
                        for (int i = 0; i < 3; i++)
                          describe(
                            iconList[i].icon,
                            titleList[i],
                            describeList[i],
                          ),
                        const Spacer(),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 25),
                              child: Text(
                                "Restore subscription",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 7.0),
                              child: Text(
                                "Auto-renews for \$25/month until canceled",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: const Center(
                                child: Text(
                                  "SubScribe",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Padding describe(IconData? icon, String title, String describe) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              describe,
            ),
          ],
        )
      ],
    ),
  );
}
