---
title: 'Risinājums: Noslēgt ārējo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Atrodiet programmu failā [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Izvade

```
Hello, Anna!
```

## Komentāri

1. `message` neņem nevienu argumentu, bet tā tomēr var izmantot `$name`. Ligzdota apakšprogramma satver tās apakšprogrammas leksiskos mainīgos, kas to satur. Tāpēc ārējais `$name` ir redzams.

1. Kad izpildās `greet('Anna')`, `$name` ir `'Anna'`. Tāpēc `message` atgriež `Hello, Anna!`. Ligzdotiem palīgiem ir kopīgs redzamības apgabals ar to, kas ir ap tiem. Tas padara tos par kaut ko vairāk nekā tikai paslēptas funkcijas.

{% include nav.html %}
