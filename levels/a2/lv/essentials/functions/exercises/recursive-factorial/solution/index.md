---
title: 'Risinājums: Rekursīvais faktoriāls'
---

{% include menu.html %}

Faktoriāls ir ļoti noderīgs uzdevums. Jūs varat to atrisināt daudzos dažādos veidos. Šoreiz mēs izmantojam rekurziju. Tas nozīmē, ka funkcija izsauc pati sevi.

## Kods 1

Lūk, risinājuma kods. Ņemiet vērā, ka jums jāpārbauda nosacījums. Šis nosacījums aptur rekurziju. Bez tā rekurzija turpinās bez gala.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Atrodiet programmu failā [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Kods 2

Šādā kodā `if` postfix forma bieži ir labāka. Šeit `if` ir pēc `return`. Tāpēc funkcija atgriežas uzreiz. Kods kļūst tīrāks. Tajā ir mazāk atkāpju un pieturzīmju.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Atrodiet atjaunināto programmu failā [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Piemērs

Palaidiet programmu un pārbaudiet rezultātu. Lūk, interesants fakts. Sešās nedēļās ir tieši _10!_ sekundes.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
