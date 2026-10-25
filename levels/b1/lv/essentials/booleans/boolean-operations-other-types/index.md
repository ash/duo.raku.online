---
title: Loģiskās operācijas ar citiem tipiem
---

{% include menu.html %}

Nākamajā sadaļā mēs runāsim par [datu konvertēšanu no viena tipa uz citu](/lv/essentials/coercion). Bet pirms tam ir svarīgi norādīt uz vienu Raku īpatnību. Jūs varat lietot booleānas operācijas ar virknēm vai integeriem. Šajā gadījumā vērtības netiek konvertētas uz booleāniem. Arī rezultāts nav booleāna vērtība. Apskatiet šos piemērus:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Izlasīsim noteikumus 📖 [no dokumentācijas](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` atgriež pirmo argumentu, kas kā booleāna vērtība ir False. Ja tāda nav, tas atgriež pēdējo argumentu.
* `||` atgriež pirmo argumentu, kas kā booleāna vērtība ir True. Ja tāda nav, tas atgriež pēdējo argumentu.
* `^^` atgriež True argumentu, ja tāds ir tieši viens. Ja visi argumenti ir False, tas atgriež pēdējo. Ja vairāk nekā viens arguments ir True, tas atgriež `Nil`.

Pievērsiet uzmanību, ka mēs tikko sastapāmies ar `Nil`, kas ir ‘null’ vērtība.

{% include nav.html %}
