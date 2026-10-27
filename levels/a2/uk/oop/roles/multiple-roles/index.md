---
title: Компонування кількох ролей
translations_gpt:
---

{% include menu.html %}

Клас може виконувати більш ніж одну роль. Просто напишіть `does` перед кожною роллю:

```raku
role Walk {
    method move { 'walking' }
}

role Swim {
    method dive { 'diving' }
}

class Duck does Walk does Swim {
}
```

Тепер клас `Duck` має два методи. Він має `move` із `Walk`. Він має `dive` із `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Таке поєднання ролей називають _композицією_. Ви будуєте клас із кількох окремих частин поведінки. Це часто дає вам більше вибору, ніж один ланцюжок успадкування. Клас бере саме ті вміння, які йому потрібні. Більше він нічого не бере.

{% include nav.html %}
