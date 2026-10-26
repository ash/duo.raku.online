---
title: do kaj la valoro de bloko
translations_gpt:
---

{% include menu.html %}

Bloko sola estas deklaro, ne esprimo. Do kutime vi ne povas atribui ĝin al variablo. La prefikso `do` faras el bloko esprimon. Ĝia valoro estas la valoro de la **lasta** deklaro en la bloko:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Ene de la bloko, vi povas krei variablojn. Vi povas ruli plurajn deklarojn kaj komputi rezulton. `do` redonas la valoron de la bloko. Tio estas utila, kiam unu esprimo ne sufiĉas por valoro.

`do` ankaŭ funkcias antaŭ kontrolfluaj deklaroj. Ĉi tiuj deklaroj elektas aŭ ripetas kodon. Kun `do`, ili ankaŭ redonas valoron:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Ĉi tie `do given` faras el la tuta `given`/`when` esprimon. Ĝia valoro estas `positive`. Same funkcias `do if` kaj `do for`. Mallonge, per `do` bloko povas stari tie, kie Raku bezonas valoron. Tio funkcias ankaŭ por kontrolstrukturoj.

{% include nav.html %}
