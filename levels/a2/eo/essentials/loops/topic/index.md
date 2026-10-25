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

Vi ne devas skribi `$n`. Sen ĝi, Raku uzas la variablon `$_`. Raku kreas ĉi tiun variablon por vi. Do ĉi tiu programo faras la samon:

```raku
for 1..5 {
    say $_;
}
```

Vi [jam scias](/eo/essentials/hello-world/), ke `say` povas esti ankaŭ metodo:

```raku
for 1..5 {
    $_.say;
}
```

Voko de metodo sur `$_` ne bezonas la nomon `$_`. Do la buklo povas esti eĉ pli mallonga:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
