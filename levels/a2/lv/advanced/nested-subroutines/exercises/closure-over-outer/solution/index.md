---
title: 'Risinājums: Noslēgt ārējo'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `message` neņem nevienu argumentu. Bet tā tomēr var lietot `$name`. Ligzdota apakšprogramma patur ārējās apakšprogrammas leksiskos mainīgos. Tāpēc ārējais `$name` ir redzams iekšpus `message`.

1. Izsaukuma `greet('Anna')` laikā `$name` ir `'Anna'`. Tāpēc `message` atgriež `Hello, Anna!`. Palīgam ir kopīgs redzamības apgabals ar ārējo apakšprogrammu. Tāpēc ligzdots palīgs ir vairāk nekā tikai paslēpta funkcija.

{% include nav.html %}
