---
title: 'Risinājums: Rekursīvais faktoriāls'
---

{% include menu.html %}

Faktoriāls ir ļoti noderīgs uzdevums, jo to var atrisināt daudzos veidos. Šoreiz mēs izmantojam rekurziju, kas nozīmē, ka funkcija izsauc pati sevi.

## Kods 1

Lūk, risinājuma kods. Ņemiet vērā, ka jums jāpārbauda nosacījums, lai apturētu rekurziju. Citādi tā turpināsies bez gala.

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

Šādā kodā `if` postfix forma bieži ir labāka. Tā ļauj uzreiz atgriezties no funkcijas. Tas padara kodu tīrāku un noņem daudz atkāpju un pieturzīmju.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Atrodiet atjaunināto programmu failā [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Piemērs

Palaidiet programmu un pārbaudiet rezultātu. Starp citu, vai jūs zinājāt, ka sešās nedēļās ir tieši _10!_ sekundes?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
