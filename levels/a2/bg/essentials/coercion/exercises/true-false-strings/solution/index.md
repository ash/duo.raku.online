---
title: 'Solution: Истински и фалшиви стрингове'
---

{% include menu.html %}

Това упражнение прилича на [предишното](../../true-false-numbers). Но този път задачата е малко по-трудна. Тук повече низове могат да изглеждат като `False`. Нека ги разгледаме.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

От всички тези низове само празният низ става `False`. Всички други низове стават `True`. Дори низ само с интервали става `True`. Низ със знака `0` също е `True`.

🦋 Можете да намерите пълната програма с горния пример във файла [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
