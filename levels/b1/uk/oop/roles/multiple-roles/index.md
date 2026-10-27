---
title: Компонування кількох ролей
translations_gpt:
---

{% include menu.html %}

Клас може виконувати більш ніж одну роль. Ви просто перелічуєте кожну роль із власним `does`:

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

Клас `Duck` тепер має два методи: `move` із `Walk` і `dive` із `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Таке поєднання ролей називають _композицією_. Воно дозволяє будувати клас із кількох окремих частин поведінки. Це часто гнучкіше, ніж один ланцюжок успадкування. Клас може підмішати саме ті вміння, які йому потрібні, і нічого більше.

{% include nav.html %}
