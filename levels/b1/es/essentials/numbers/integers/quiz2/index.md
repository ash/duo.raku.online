---
title: 'Quiz: Dígitos y números Unicode'
---

{% include menu.html %}

Mira los dígitos de abajo. ¿Cuáles de ellos forman enteros que Raku acepta como valores `Int`? Intenta averiguarlo.

{:.quiz}
1 | 3
1 | 12345
1 | ⓷ | Esto se considera un número, no un solo dígito.
0 | ⓵⓶⓷⓸⓹ | Así que no puedes combinarlos de tal manera para obtener `12345`.
1 | ❷
0 | ❸❹❺
1 | ㊷ | Un solo carácter Unicode llamado `CIRCLED NUMBER FOURTY TWO`.
0 | ⓸⓶ | Pero los dos números no son un número.
1 | ㊄ | Número chino circundado 5 y es un número `CIRCLED IDEOGRAPH FIVE`.
0 | 五 | Aunque esto significa 5, el carácter no es ni un dígito ni un número.
0 | 一二三四五

{% include quiz.html %}

## Comentarios

Puedes usar el siguiente programa como punto de partida. Juega con él para explorar las propiedades de estos dígitos. Descomenta las líneas para ver si el programa compila.

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

🦋 Toma el código de GitHub: [unicode-digits.raku](https://github.com/ash/raku-course/blob/master/essentials/numbers/integers/quiz2/unicode-digits.raku).

{% include nav.html %}
