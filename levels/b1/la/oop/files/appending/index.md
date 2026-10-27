---
title: Ad plicam addere
translations_gpt:
---

{% include menu.html %}

Ex more `spurt` substituit omnia quae in archivo erant. Ut potius ad finem archivi exsistentis addas, argumentum nominatum `:append` trade:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

Secundum `spurt` contentum vetus servat et novam lineam post id addit. Itaque denique archivum utramque lineam continet:

```
line1
line2
```

Sine `:append` secunda vocatio archivum superscriberet. Sola `line2` maneret. Apponere utile est ad res sicut archiva annalium. Quisque cursus programmatis ad commentarium crescentem addit, neque iterum a principio incipit.

{% include nav.html %}
