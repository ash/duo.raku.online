---
title: 'Quiz: Unicode cijfers en getallen'
---

{% include menu.html %}

Kijk naar de cijfers hieronder. Sommige ervan vormen gehele getallen. Raku accepteert die als waarden van het type `Int`. Welke zijn dat? Probeer het uit te vinden.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | Dit wordt beschouwd als een nummer, niet als een enkel cijfer.
0 | ⓵⓶⓷⓸⓹ | Dus je kunt ze niet op zo'n manier combineren om `12345` te krijgen.
1 | ❷
0 | ❸❹❺
1 | ㊷ | Een enkel Unicode-teken genaamd `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | Maar de twee nummers vormen geen nummer.
1 | ㊄ | Omcirkelde Chinese 5 en het is een nummer `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | Hoewel dit 5 betekent, is het teken noch een cijfer noch een nummer.
0 | 一二三四五

{% include quiz.html %}

## Opmerkingen

Je kunt met het programma hieronder beginnen. Speel ermee en leer meer over deze cijfers. Sommige regels beginnen met `#`, dus het zijn commentaren. Haal de `#` weg en kijk of het programma compileert.

```raku
my $x;
$x =  3;
say $x; say $x.WHAT;

$x =  12345;
$x =  ⓷;
# $x =  ⓵⓶⓷⓸⓹;

$x =  ❷;
# $x =  ❸❹❺;

$x =  ⒌;
# $x =  ⒊⒋⒌;

# $x =  ㊀㊁㊂㊃㊄;
$x =  ㊄;
say $x; say $x.WHAT;

# $x =  五;
# $x =  一二三四五;

$x = ㊷;
say $x;
```

🦋 Neem de code van GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
