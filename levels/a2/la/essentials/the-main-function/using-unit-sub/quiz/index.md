---
title: Quiz — Utendo unit-scoped definitio
---

{% include menu.html %}

## 1

Elige unum ex declaratoribus. Quis programma rectum facit?

{:.quiz-select}
unit | (: my, multi, unit :) `sub MAIN(Str $name);`
. | `dic "Salve, $name!";`

## 2

Estne programma rectum an non?

```raku
unit sub MAIN(Str $name) {
    say "Salve, $name!";
}
```

{:.quiz-select}
valid | Hic program est&nbsp; (: validus, invalidus :) | Quamvis praesentia `unit`, adhuc potes addere braces, sed id est redundans.

## 3

Is this program correct?

```raku
unit multi sub MAIN() {
    say 'Salve, omnes!';
}

unit multi sub MAIN($name) {
    say "Salve, $name!";
}
```

{:.quiz-select}
invalid | Hic program est&nbsp; (: validus, invalidus :) | Error: `Non potest uti 'unit' cum singulis multi candidatis.`

{% include quiz.html %}

{% include nav.html %}
