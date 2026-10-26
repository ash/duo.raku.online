---
title: do kaj la valoro de bloko
translations_gpt:
---

{% include menu.html %}

Bloko per si mem estas deklaro, ne esprimo. Do normale vi ne povas atribui ĝin al variablo. La prefikso `do` transformas blokon en esprimon. Ĝia valoro estas la valoro de la **lasta** deklaro de la bloko:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Ene de la bloko, vi povas deklari variablojn, ruli plurajn deklarojn kaj komputi rezulton. Poste `do` redonas la valoron de la bloko. Tio estas utila, kiam vi bezonas pli ol unu esprimon por ricevi valoron.

`do` ankaŭ funkcias antaŭ kontrolfluaj deklaroj. Tiam ili ankaŭ povas redoni valoron:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Ĉi tie `do given` transformas la tutan `given`/`when` en esprimon kun la valoro `positive`. Same funkcias `do if` kaj `do for`. Resume, per `do` vi povas uzi blokon tie, kie oni atendas valoron. Tio funkcias ankaŭ por kontrolstrukturo.

{% include nav.html %}
