
import 'package:demo_andres_garcia_needzaio/ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key key,
    this.thumbnailURL,
    this.fullName,
    this.email,
    this.index,
  }) : super(key: key);
  final String thumbnailURL;
  final String fullName;
  final String email;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 67,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x10000029),
              offset: Offset(0, 7),
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Material(
          borderRadius: BorderRadius.circular(15.0),
          color: kPrimaryColor.withOpacity(0.4),
          child: InkWell(
            borderRadius: BorderRadius.circular(15.0),
            onTap: () {
              print('Pressed User ID: $index');
            },
            splashColor: Colors.white,
            // splashFactory: InkSplash.splashFactory,
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    thumbnailURL,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: _UserDescription(
                    fullName: fullName,
                    email: email,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: kPrimaryColor,
                  size: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UserDescription extends StatelessWidget {
  const _UserDescription({
    Key key,
    this.fullName,
    this.email,
  }) : super(key: key);

  final String fullName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            fullName.toUpperCase(),
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            email,
            style: GoogleFonts.montserrat(
              // fontWeight: FontWeight.bold,
              fontSize: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
