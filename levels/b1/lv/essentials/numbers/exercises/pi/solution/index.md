---
title: 'Risinājums: π vērtība'
---

{% include menu.html %}

Programma, kas izdrukā π vērtību, ir diezgan vienkārša.

## Kods

```raku
say π;
```

🦋 Pilnu kodu var atrast failā [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Izvade

Palaidiet programmu un skatieties, ko tā izdrukā:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Komentāri

Raku mums dod iebūvētu konstanti, ko sauc par `π`, tāpēc programma ir ļoti vienkārša. Tomēr šeit ir daži citi veidi, kā izdarīt to pašu:

```raku
    π.say;
```

Vai:

```raku
    pi.say;
```

Vai:

```raku
    say pi;
```

{% include nav.html %}
