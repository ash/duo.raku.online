---
title: Компониране на няколко роли
translations_gpt:
---

{% include menu.html %}

Класът може да изпълнява повече от една роля. Просто изброявате всяка роля със свое `does`:

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

Класът `Duck` вече има два метода: `move` от `Walk` и `dive` от `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Такова съчетаване на роли се нарича _композиция_. Тя ви позволява да изградите клас от няколко отделни парчета поведение. Това често е по-гъвкаво от една верига на наследяване. Класът може да смеси в себе си точно способностите, които му трябват, и нищо повече.

{% include nav.html %}
