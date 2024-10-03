import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Facility extends StatelessWidget {
  const Facility({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Facilites",
              style: GoogleFonts.montserrat(
                  fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FacilityCard(
                  iconUrl: "assets/icons/wifi.svg",
                  title: "Wifi",
                ),
                FacilityCard(
                  iconUrl: "assets/icons/food.svg",
                  title: "Dinner",
                ),
                FacilityCard(
                  iconUrl: "assets/icons/bath_tub.svg",
                  title: "1 Tub",
                ),
                FacilityCard(
                  iconUrl: "assets/icons/pool.svg",
                  title: "Pool",
                )
              ],
            )
          ]),
    );
  }
}

class FacilityCard extends StatelessWidget {
  final String iconUrl;
  final String title;
  const FacilityCard({
    super.key,
    required this.iconUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.03,
      // width: size.height * 0.05,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: HexColor("FF0000"),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            iconUrl,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'ProductSans',
              color: HexColor("B8B8B8"),
            ),
          )
        ],
      ),
    );
  }
}
