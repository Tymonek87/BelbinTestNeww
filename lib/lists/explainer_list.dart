import 'package:belbintest/styles/styles.dart';

var explainerList = <Explainer>[
  Explainer(
    image: 'images/expl1.svg',
    colore: MyColors.firstDot,
    description:
        'Rozdziel 10 punktów w każdej z siedmiu części kwestionariusza.',
  ),
  Explainer(
    image: 'images/expl2.svg',
    colore: MyColors.secoundDot,
    description:
        'Możesz przypisać 10 punktów tylko jednemu zadaniu, które doskonale opisuje Twoje zachowanie w grupie.',
  ),
  Explainer(
    image: 'images/expl3.svg',
    colore: MyColors.thirdDot,
    description:
        'Lub też rozdzielić 10 punktów pomiędzy wszystkie lub niektóre zadania opisujące mniej lub bardziej adekwatnie Twoje zachowanie.',
  ),
];

class Explainer {
  String image;
  String description;
  var colore;
  Explainer({this.image, this.description, this.colore});
}
