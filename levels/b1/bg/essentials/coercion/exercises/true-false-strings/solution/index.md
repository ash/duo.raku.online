---
title: 'Solution: Истински и фалшиви стрингове'
---

{% include menu.html %}

Това упражнение е подобно на [предишното](../../true-false-numbers). Но този път задачата е малко по-трудна. Има повече „подозрителни“ низове, които могат да се приемат за `False`. Нека ги разгледаме.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

От всички тези низове само празният низ се преобразува в `False`. Всички други низове стават `True`, дори ако съдържат само интервали или знака `0`.

🦋 Можете да намерите пълната програма с горния пример във файла [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
