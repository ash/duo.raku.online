---
title: Viktorīna — Izmantojot vienotās darbības definīciju
---

{% include menu.html %}

## 1

Izvēlieties vienu no deklaratoriem. Kurš no tiem padara programmu pareizu?

{:.quiz-select}
unit | (: my, multi, unit :) `sub MAIN(Str $name);`
. | `say "Sveiki, $name!";`

## 2

Vai programma ir pareiza vai nav?

```raku
unit sub MAIN(Str $name) {
    say "Sveiki, $name!";
}
```

{:.quiz-select}
valid | Šī programma ir&nbsp; (: valid, invalid :) | Neskatoties uz `unit` klātbūtni, jūs joprojām varat pievienot iekavas, bet tas ir lieki.

## 3

Vai šī programma ir pareiza?

```raku
unit multi sub MAIN() {
    say 'Sveiki, visi!';
}

unit multi sub MAIN($name) {
    say "Sveiki, $name!";
}
```

{:.quiz-select}
invalid | Šī programma ir&nbsp; (: valid, invalid :) | Kļūda: `Nevar izmantot 'unit' ar atsevišķiem multi kandidātiem.`

{% include quiz.html %}

{% include nav.html %}
