import 'package:belbintest/styles/styles.dart';
import 'package:belbintest/widgets/single_role_explainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../lists/role_list.dart';

class RoleScoreView extends StatefulWidget {
  const RoleScoreView({Key key, this.role}) : super(key: key);

  final Role role;

  @override
  _RoleScoreViewState createState() => _RoleScoreViewState();
}

class _RoleScoreViewState extends State<RoleScoreView> {
  double score;

  var low = 'Niskie predyspozycje';
  var medium = "Średnie predyspozycje";
  var high = 'Wysokie predyspozycje';
  var veryHigh = 'Bardzo wysokie predyspozycje';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 0, 16),
                child: Row(
                  children: [
                    Text(
                      'Twoj wynik',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  controller: new ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: new List<Widget>.generate(roleList.length, (index) {
                    roleList.sort((b, a) => a.score.compareTo(b.score));
                    return new GridTile(
                        child: Column(
                      children: [
                        new Container(
                          decoration: BoxDecoration(
                              color: (roleList[index].score <= 6)
                                  ? MyColors.roleCardLow
                                  : (roleList[index].score > 6 &&
                                          roleList[index].score <= 12)
                                      ? MyColors.roleCardMedium
                                      : (roleList[index].score > 12 &&
                                              roleList[index].score <= 18)
                                          ? MyColors.roleCardHigh
                                          : MyColors.roleCardVeryHigh,
                              borderRadius: BorderRadiusDirectional.only(
                                  topStart: Radius.circular(16),
                                  topEnd: Radius.circular(16))),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '${roleList[index].title}',
                                      textAlign: TextAlign.center,
                                      maxLines: 3,
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          (roleList[index].score <= 6)
                                              ? Expanded(
                                                  child: Text(
                                                    low,
                                                    maxLines: 2,
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                )
                                              : (roleList[index].score > 6 &&
                                                      roleList[index].score <= 12)
                                                  ? Expanded(
                                                      child: Text(medium,
                                                          maxLines: 2,
                                                          style:
                                                              GoogleFonts.poppins(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white)),
                                                    )
                                                  : (roleList[index].score > 12 &&
                                                          roleList[index].score <=
                                                              18)
                                                      ? Expanded(
                                                          child: Text(high,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                      fontSize: 12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white)),
                                                        )
                                                      : Expanded(
                                                          child: Text(veryHigh,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                      fontSize: 12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white)),
                                                        ),
                                          Text(
                                            '${roleList[index].score.round().toString()}',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SingleRoleExplainer(role: roleList[index])));
                          },
                          child: new Container(
                            decoration: BoxDecoration(
                                color: (roleList[index].score <= 6)
                                    ? MyColors.roleCardLowsec
                                    : (roleList[index].score > 6 &&
                                            roleList[index].score <= 12)
                                        ? MyColors.roleCardMediumsec
                                        : (roleList[index].score > 12 &&
                                                roleList[index].score <= 18)
                                            ? MyColors.roleCardHighsec
                                            : MyColors.roleCardVeryHighsec,
                                borderRadius: BorderRadiusDirectional.only(
                                    bottomStart: Radius.circular(16),
                                    bottomEnd: Radius.circular(16))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Sprawdź  >',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ));
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
