---
title: Kvizo — Prefikso aŭ postfikso
translations_gpt:
---

{% include menu.html %}

Vi vidis `++` *post* variablo. Tie, ĝi estas postfikso. Vi ankaŭ povas skribi ĝin *antaŭ* variablo. Kio estas la kategorio de `++` en `++$x`?

```raku
my $x = 5;
say ++$x;
```

{:.quiz}
1 | prefix
0 | postfix
0 | infix
0 | postcircumfix

{% include quiz.html %}

<div class="extended-explanation">

Nur la *pozicio* decidas la kategorion. En `++$x`, la operatoro staras antaŭ sia sola operando. Do ĝi estas **prefiksa** operatoro. Skribu la saman `++` post ĝi, kiel en `$x++`. Tiam ĝi estas postfikso. Ambaŭ formoj aldonas 1 al `$x`. La prefiksa formo redonas la novan valoron. Do la programo presas `6`.

</div>

{% include nav.html %}
