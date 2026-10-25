---
title: Loģiskās operācijas ar citiem tipiem
---

{% include menu.html %}

Nākamā sadaļa ir par [datu maiņu no viena tipa uz citu](/lv/essentials/coercion). Bet vispirms apskatiet svarīgu Raku īpatnību. Jūs varat lietot booleānas operācijas ar virknēm vai integeriem. Tad Raku nepārvērš vērtības par booleānām vērtībām. Arī rezultāts nav booleāna vērtība. Apskatiet šos piemērus:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Šeit ir noteikumi 📖 [no dokumentācijas](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` atgriež pirmo vērtību, ko Raku uzskata par False. Ja tādas vērtības nav, tas atgriež pēdējo vērtību.
* `||` atgriež pirmo vērtību, ko Raku uzskata par True. Ja tādas vērtības nav, tas atgriež pēdējo vērtību.
* `^^` atgriež True vērtību, ja ir tikai viena True vērtība. Ja visas vērtības ir False, tas atgriež pēdējo vērtību. Ja vairāk nekā viena vērtība ir True, tas atgriež `Nil`.

Šeit mēs redzam jaunu vērtību — `Nil`. Tā ir ‘null’ vērtība.

{% include nav.html %}
