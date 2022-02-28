import 'package:belbintest/templates/template_scores_view.dart';

var roleList = <Role>[
  Role(
    title: 'Nauralny Lider',
    score: nl,
    description:
        'sprawuje pieczę i kontrolę nad sposobem, w jaki grupa stara się osiągnąć cele. Potrafi efektywnie wykorzystać zasoby zespołu; rozpoznaje, gdzie tkwią zalety, a gdzie słabości grupy; potrafi wykorzystać potencjał indywidualny każdego pracownika.  Charakteryzuje go raczej zdrowy rozsądek aniżeli rozważania intelektualne, w kierowaniu nie jest agresywny.',
    characteristic: 'zrównoważony, dominujący, ekstrawertyk.',
  ),
  Role(
    title: 'Człowiek Akcji',
    score: cza,
    description:
        'kształtuje sposób, w jaki wykorzystany zostanie wysiłek grupy; kieruje swoją uwagę bezpośrednio na ustalaniu celów i priorytetów; pragnie wywierać wpływ na kształt lub wzorzec dyskusji grupowej. Chce szybko widzieć rezultaty. Rywalizuje i bywa arogancki, ale dzięki niemu „coś się rzeczywiście dzieje.',
    characteristic:
        'niespokojny, dominujący, ekstrawertyk, impulsywny, łatwo się irytuje.',
  ),
  Role(
    title: 'Siewca (człowiek Idei)',
    score: sie,
    description:
        'wysuwa nowe pomysły i strategie ze szczególnym uwzględnieniem najistotniejszych problemów. Próbuje „przedzierać się” ze swoją wizją przez grupowe podejście do problemu na zasadzie konfrontacji.  Może „gubić” szczegóły i robić błędy, a także krytykować pomysły innych. Im większy problem, tym większe wyzwanie, żeby go rozwiązać. Uważa, że wszystkie dobre pomysły z początku dziwnie wyglądają. Roztacza wokół siebie aurę „geniusza”.',
    characteristic: 'dominujący, inteligentny, introwertyk.',
  ),
  Role(
    title: 'Człowiek kontaktów',
    score: czk,
    description:
        'bada, analizuje i przytacza informacje na temat pomysłów, stanu wiedzy i działań na zewnątrz grupy; nawiązuje kontakty zewnętrzne, które mogą być użyteczne dla zespołu; potrafi prowadzić niezbędne negocjacje. Popiera innowacje i jest dobrym improwizatorem. Trochę cyniczny w poszukiwaniu zysku dla grupy – często mówi „nowe możliwości powstają w wyniku błędów innych”.',
    characteristic: 'zrównoważony, dominujący, ekstrawertyk.',
  ),
  Role(
    title: 'Sędzia',
    score: se,
    description:
        'analizuje problem, ocenia pomysły i sugestie, dzięki czemu grupa startuje z lepiej przygotowanej pozycji do podjęcia ważnej decyzji.  Jest najbardziej obiektywny, bezstronny i niezaangażowany emocjonalnie, lubi mieć czas do namysłu, brak mu entuzjazmu, ale jego spokój pozwala na podjęcie wyważonych decyzji.',
    characteristic: 'inteligentny, zrównoważony, introwertyk.',
  ),
  Role(
    title: 'Człowiek Grupy',
    score: czg,
    description:
        'wspiera członków grupy, podbudowuje morale grupy, jeśli są jakieś niedociągnięcia i braki, potrafi zapobiegać konfliktom, kształtuje „ducha” grupy, wzmacnia współpracę i lepszą komunikację, jest lojalny wobec zespołu. Może jego wkład nie jest zbyt wyraźny, ale nieoceniona jest jego lojalność i oddanie wobec grupy, nie lubi konfrontacji.',
    characteristic:
        'ekstrawertyk, zrównoważony, niskie pragnienie dominacji i rywalizacji, zdolność empatii.',
  ),
  Role(
    title: 'Perfekcjonista',
    score: per,
    description:
        'nastawiony na konkretny efekt – na zakończenie zadania w określonym czasie i zapewnienie mu jak najwyższego standardu wykonania; może być trudny w kontaktach ze względu na to, że jest wrogiem przypadku i grzęźnie w szczegółach, które nie są najistotniejsze do zakończenia zadania, zawsze świadom celu. ',
    characteristic: 'niespokojny, napięty, introwertyk, zdyscyplinowany.',
  ),
  Role(
    title: 'Praktyczny organizator',
    score: po,
    description:
        'zamienia koncepcje i plany na praktyczne działanie i realizuje uzgodnione plany w sposób systematyczny i efektywny.  Dzięki niemu następuje praktyczne wdrożenie projektów i planów rozwiązań. Pragnie konkretów, nie lubi zmienności planów.',
    characteristic: 'zrównoważony i zdyscyplinowany.',
  ),
];

class Role {
  String title;
  String characteristic;
  double score;
  String description;
  Role({this.title, this.score, this.description, this.characteristic});
}
