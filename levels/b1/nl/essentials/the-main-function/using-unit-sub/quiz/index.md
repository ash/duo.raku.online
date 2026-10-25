---
title: Quiz* — Gebruik van de unit-scoped definitie
---

{% include menu.html %}

## 1

Kies een declarator zodat het programma correct is.

{:.quiz-select}
unit | (: my, multi, unit :) `sub MAIN(Str $name);`
. | `say "Hallo, $name!";`

## 2

Bepaal of het programma correct is.

```raku
unit sub MAIN(Str $name) {
    say "Hallo, $name!";
}
```

{:.quiz-select}
valid | Dit programma is&nbsp; (: geldig, ongeldig :) | Ondanks de aanwezigheid van `unit`, kun je nog steeds accolades toevoegen, maar dat is overbodig.

## 3

Is dit programma correct?

```raku
unit multi sub MAIN() {
    say 'Hallo, iedereen!';
}

unit multi sub MAIN($name) {
    say "Hallo, $name!";
}
```

{:.quiz-select}
invalid | Dit programma is&nbsp; (: geldig, ongeldig :) | Fout: `Kan 'unit' niet gebruiken met individuele multi kandidaten.`

{% include quiz.html %}

{% include nav.html %}
