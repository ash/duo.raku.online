---
title: Aldoni al dosiero
translations_gpt:
---

{% include menu.html %}

Defaŭlte, `spurt` anstataŭigas ĉion, kio estis en la dosiero. Por anstataŭe aldoni al la fino de ekzistanta dosiero, transdonu la nomitan argumenton `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

La dua `spurt` konservas la malnovan enhavon kaj aldonas la novan linion post ĝi. Do fine la dosiero enhavas ambaŭ liniojn:

```
line1
line2
```

Sen `:append`, la dua voko superskribus la dosieron. Restus nur `line2`. Aldonado estas utila por aferoj kiel protokoldosieroj. Ĉiu rulo de programo aldonas al kreskanta registro, anstataŭ komenci denove.

{% include nav.html %}
