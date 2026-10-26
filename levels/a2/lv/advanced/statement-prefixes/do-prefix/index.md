---
title: do un bloka vērtība
translations_gpt:
---

{% include menu.html %}

Bloks viens pats ir teikums, nevis izteiksme. Tāpēc parasti to nevar piešķirt mainīgajam. Prefikss `do` padara bloku par izteiksmi. Tās vērtība ir bloka **pēdējā** teikuma vērtība:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Bloka iekšā jūs varat izveidot mainīgos. Jūs varat izpildīt vairākus teikumus un aprēķināt rezultātu. `do` atdod bloka vērtību. Tas noder, kad vērtībai nepietiek ar vienu izteiksmi.

`do` darbojas arī pirms vadības plūsmas teikumiem. Šie teikumi izvēlas vai atkārto kodu. Ar `do` arī tie atgriež vērtību:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Šeit `do given` padara visu `given`/`when` par izteiksmi. Tās vērtība ir `positive`. Tas pats darbojas ar `do if` un `do for`. Īsi sakot, ar `do` bloks var stāvēt tur, kur Raku vajag vērtību. Tas darbojas arī vadības struktūrām.

{% include nav.html %}
