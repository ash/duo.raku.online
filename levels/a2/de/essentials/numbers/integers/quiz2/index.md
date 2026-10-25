---
title: 'Quiz: Unicode-Ziffern und -Zahlen'
---

{% include menu.html %}

Sehen Sie sich die Ziffern unten an. Einige davon bilden ganze Zahlen. Raku akzeptiert sie als Werte vom Typ `Int`. Welche sind das? Versuchen Sie es herauszufinden.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | Dies wird als Zahl betrachtet, nicht als einzelne Ziffer.
0 | ⓵⓶⓷⓸⓹ | Daher können Sie sie nicht so kombinieren, um `12345` zu erhalten.
1 | ❷
0 | ❸❹❺
1 | ㊷ | Ein einzelnes Unicode-Zeichen namens `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | Aber die beiden Zahlen sind keine Zahl.
1 | ㊄ | Umkreistes chinesisches 5 und es ist eine Zahl `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | Obwohl dies 5 bedeutet, ist das Zeichen weder eine Ziffer noch eine Zahl.
0 | 一二三四五

{% include quiz.html %}

## Kommentare

Sie können mit dem Programm unten beginnen. Spielen Sie damit und lernen Sie mehr über diese Ziffern. Einige Zeilen beginnen mit `#`, also sind sie Kommentare. Entfernen Sie das `#` und sehen Sie, ob das Programm kompiliert.

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

🦋 Nehmen Sie den Code von GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
