---
title: Aldoni al dosiero
translations_gpt:
---

{% include menu.html %}

Normale, `spurt` anstataŭigas la tutan malnovan enhavon de la dosiero. Sed eble vi volas aldoni al la fino de dosiero. Por tio, transdonu la nomitan argumenton `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

La dua `spurt` konservas la malnovan enhavon. Ĝi aldonas la novan linion post ĝi. Do fine la dosiero havas ambaŭ liniojn:

```
line1
line2
```

Sen `:append`, la dua voko superskribas la dosieron. Tiam la dosiero havas nur `line2`. Aldoni al la fino de dosiero nomiĝas aldonado. Ĝi estas utila, ekzemple, por protokoldosieroj. Protokoldosiero tenas registron de la laboro de programo. Ĉiu rulo de la programo aldonas al ĉi tiu registro. Do la registro kreskas. La programo ne komencas denove kun malplena dosiero.

{% include nav.html %}
