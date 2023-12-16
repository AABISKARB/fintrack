import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Iicon(),
    );
  }
}

class Iicon extends StatefulWidget {
  const Iicon({super.key});

  @override
  State<Iicon> createState() => _IiconState();
}

class _IiconState extends State<Iicon> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 18,
      crossAxisSpacing: 18,
      crossAxisCount: 4,
      padding: const EdgeInsets.all(15),
      children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                Icon(Icons.wallet, size: 55, color: Colors.blueGrey),
                Text("Salary",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                FaIcon(FontAwesomeIcons.moneyCheckDollar,
                    size: 55, color: Colors.blueGrey),
                Text("Refunds",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                Icon(Icons.card_giftcard, size: 55, color: Colors.blueGrey),
                Text("Grants",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                FaIcon(FontAwesomeIcons.piggyBank,
                    size: 50, color: Colors.blueGrey),
                //Icon(Icons., size: 75, color: Colors.blueGrey),
                Text("Investment",
                    style: TextStyle(
                        fontFamily: AutofillHints.addressCity,
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                Icon(Icons.home_work_outlined,
                    size: 55, color: Colors.blueGrey),
                Text("Rental",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                Icon(Icons.more_rounded, size: 55, color: Colors.blueGrey),
                Text("Lottery",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                FaIcon(FontAwesomeIcons.award,
                    size: 55, color: Colors.blueGrey),
                Text("Awards",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                // FaIcon(FontAwesomeIcons.monero,
                //     size: 75, color: Colors.blueGrey),
                Icon(
                  Icons.moving_sharp,
                  size: 55,
                  color: Colors.blueGrey,
                ),
                Text("Dividends",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                FaIcon(FontAwesomeIcons.tags, size: 55, color: Colors.blueGrey),
                //Icon(Icons.fmd_good_sharp, size: 75),
                Text("Sale",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: const Column(
              children: [
                Icon(Icons.add, size: 55, color: Colors.blueGrey),
                Text("Others",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
            onTap: () {
              _showBottomSheet(context);
            },
          ),
        ),
      ],
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      //use this controller to get what the user typed.
      final _textController = TextEditingController();
      return SizedBox(
        height: 310,
        width: 50,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 195,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                        hintText: 'Enter short note',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              //clear what currently in the textfield.
                              _textController.clear();
                            },
                            icon: const Icon(Icons.clear))),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 195,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                        hintText: 'Enter amount.',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              //clear what currently in the textfield.
                              _textController.clear();
                            },
                            icon: const Icon(Icons.clear))),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "7",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "8",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "9",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: const Icon(Icons.add_task),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "4",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "5",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "6",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: PhysicalModel(
                      color: Colors.white,
                      shadowColor: Colors.black87,
                      elevation: 25,
                      child: MaterialButton(
                        onPressed: () {},
                        //color: Colors.green,
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "1",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "2",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "3",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: MaterialButton(
                          onPressed: () {},
                          //color: Colors.green,
                          child: const Text(
                            "-",
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            "0",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            style: TextStyle(fontSize: 30),
                            ".",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 85,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.white,
                      child: InkWell(
                        child: Center(
                            child: Icon(
                          Icons.backspace_outlined,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: SizedBox(
                    width: 125,
                    height: 60,
                    child: PhysicalModel(
                      elevation: 25,
                      shadowColor: Colors.black87,
                      color: Colors.yellow,
                      child: InkWell(
                        child: Center(
                          child: Text(
                            "Add note",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
