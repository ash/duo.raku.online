---
title: do un bloka vērtība
translations_gpt:
---

{% include menu.html %}

Bloks pats par sevi ir teikums, nevis izteiksme. Tāpēc parasti to nevar piešķirt mainīgajam. Prefikss `do` pārvērš bloku par izteiksmi. Tās vērtība ir bloka **pēdējā** teikuma vērtība:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Bloka iekšienē jūs varat deklarēt mainīgos, izpildīt vairākus teikumus un aprēķināt rezultātu. Tad `do` atgriež bloka vērtību. Tas noder, kad vērtības iegūšanai vajag vairāk nekā vienu izteiksmi.

`do` darbojas arī vadības plūsmas teikumu priekšā. Tad arī tie var atgriezt vērtību:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Šeit `do given` pārvērš visu `given`/`when` par izteiksmi ar vērtību `positive`. Tas pats darbojas ar `do if` un `do for`. Īsi sakot, `do` ļauj izmantot bloku tur, kur gaida vērtību. Tas darbojas arī ar vadības struktūru.

{% include nav.html %}
