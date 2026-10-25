---
title: Temvariablo
---

{% include menu.html %}

`$_` estas speciala variablo. Ĝia nomo estas _temvariablo_.

Rigardu ĉi tiun buklon super intervalo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Vi povas forlasi la variablon `$n`. Tiam Raku uzas anstataŭe la variablon `$_`. La programo faras la samon kiel ĉi tiu:

```raku
for 1..5 {
    say $_;
}
```

Vi [jam scias](/eo/essentials/hello-world/), ke vi povas uzi `say` kiel metodon:

```raku
for 1..5 {
    $_.say;
}
```

Kiam vi vokas metodon sur `$_`, vi ne bezonas skribi la variablon. Do la buklo povas esti eĉ pli mallonga:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
