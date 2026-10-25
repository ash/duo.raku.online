---
title: Temvariablo
---

{% include menu.html %}

`$_` estas speciala variablo. Ĝi nomiĝas _temvariablo_.

Jen buklo super intervalo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Vi povas forlasi la variablon `$n`. Tiam Raku aŭtomate uzas anstataŭe la variablon `$_`. Do la programo estas la sama kiel ĉi tiu:

```raku
for 1..5 {
    say $_;
}
```

Kiel vi [memoras](/eo/essentials/hello-world/), vi ankaŭ povas voki `say` kiel metodon:

```raku
for 1..5 {
    $_.say;
}
```

Por voki metodon sur `$_`, vi ne bezonas skribi la variablon mem. Do ni povas fari nian buklon eĉ pli simpla:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
