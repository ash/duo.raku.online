---
title: Temvariablo
---

{% include menu.html %}

`$_` estas speciala variablo nomata _variablo de temo_.

Rigardu ĉi tiun buklon super intervalo:

```raku
for 1..5 -> $n {
    say $n;
}
```

Vi povas preterlasi la variablon `$n`, kaj tiam Raku anstataŭe uzas aŭtomatan variablon, `$_`. La programo estas la sama kiel ĉi tiu:

```raku
for 1..5 {
    say $_;
}
```

Kiel vi [memoras](/eo/essentials/hello-world/), vi ankaŭ povas uzi `say` kiel metodon:

```raku
for 1..5 {
    $_.say;
}
```

Kiam vi vokas metodon sur `$_`, vi ne devas skribi la variablon mem. Do nia buklo povas fariĝi eĉ pli simpla:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
