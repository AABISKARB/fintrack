import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Eicon(),
    );
  }
}

class Eicon extends StatefulWidget {
  const Eicon({super.key});

  @override
  State<Eicon> createState() => _EiconState();
}

class _EiconState extends State<Eicon> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 18,
      crossAxisSpacing: 18,
      crossAxisCount: 4,
      padding: const EdgeInsets.all(15),
      children: const [
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.food_bank_outlined,
                    size: 55, color: Colors.blueGrey),
                Text("Food",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.water_drop_sharp, size: 55, color: Colors.blueGrey),
                Text("Fuel",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.money_off_sharp, size: 55, color: Colors.blueGrey),
                Text("Bills",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.shopping_cart, size: 55, color: Colors.blueGrey),
                Text("Grocery",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.school_outlined, size: 55, color: Colors.blueGrey),
                Text("Education",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.baby, size: 55, color: Colors.blueGrey),
                Text("Baby",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.file_copy_outlined,
                    size: 55, color: Colors.blueGrey),
                Text("Tax",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.emoji_transportation_sharp,
                    size: 55, color: Colors.blueGrey),
                Text("Transport",
                    style: TextStyle(
                        fontFamily: AutofillHints.addressCity,
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.house,
                    size: 55, color: Colors.blueGrey),
                //Icon(Icons.fmd_good_sharp, size: 75),
                Text("Home",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.movie_outlined, size: 55, color: Colors.blueGrey),
                Text("Movie",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(
                  FontAwesomeIcons.shirt,
                  size: 55,
                  color: Colors.blueGrey,
                ),
                Text("Clothing",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.shieldHeart,
                    size: 55, color: Colors.blueGrey),
                Text("Insurance",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.plane,
                    size: 55, color: Colors.blueGrey),
                Text("Travel",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.laptop,
                    size: 55, color: Colors.blueGrey),
                //Icon(Icons.fmd_good_sharp, size: 75),
                Text("Electronic",
                    style: TextStyle(
                        fontFamily: AutofillHints.addressCity,
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.devices_outlined, size: 55, color: Colors.blueGrey),
                Text("Office",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.support, size: 55, color: Colors.blueGrey),
                Text("Fitness",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.sports_baseball_rounded,
                    size: 55, color: Colors.blueGrey),
                Text("Sports",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.phone, size: 55, color: Colors.blueGrey),
                Text("Telephone",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.cat, size: 55, color: Colors.blueGrey),
                //Icon(Icons.fmd_good_sharp, size: 75),
                Text("Pet",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.smoking_rooms, size: 55, color: Colors.blueGrey),
                Text("Cigaratte",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.bed_sharp, size: 55, color: Colors.blueGrey),
                Text("Furniture",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.face_retouching_natural_sharp,
                    size: 55, color: Colors.blueGrey),
                Text("Beauty",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.book, size: 55, color: Colors.blueGrey),
                Text("Books",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                FaIcon(FontAwesomeIcons.gift, size: 55, color: Colors.blueGrey),
                //Icon(Icons.fmd_good_sharp, size: 75),
                Text("Gift",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.wine_bar_outlined, size: 55, color: Colors.blueGrey),
                Text("Beverage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
              children: [
                Icon(Icons.medication, size: 55, color: Colors.blueGrey),
                Text("Health",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
        PhysicalModel(
          color: Colors.white,
          elevation: 6,
          shadowColor: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: InkWell(
            child: Column(
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
          ),
        ),
      ],
    );
  }
}
