import 'package:belbintest/styles/styles.dart';

var roleCardColorList = <CardColor>[
  CardColor(
    firstColor: MyColors.roleCardLow,
    secoundColor: MyColors.roleCardLowsec,
  ),
  CardColor(
    firstColor: MyColors.roleCardMedium,
    secoundColor: MyColors.roleCardMediumsec,
  ),
  CardColor(
    firstColor: MyColors.roleCardHigh,
    secoundColor: MyColors.roleCardHighsec,
  ),
  CardColor(
      firstColor: MyColors.roleCardVeryHigh,
      secoundColor: MyColors.roleCardVeryHighsec),
];

class CardColor {
  var firstColor;
  var secoundColor;
  CardColor({this.secoundColor, this.firstColor});
}
