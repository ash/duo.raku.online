---
title: Компониране на няколко роли
translations_gpt:
---

{% include menu.html %}

Класът може да изпълнява повече от една роля. Просто напишете `does` пред всяка роля:

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

Сега класът `Duck` има два метода. Той има `move` от `Walk`. Той има и `dive` от `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Този начин да събирате роли заедно се нарича _композиция_. Изграждате клас от няколко отделни парчета поведение. Това често ви дава повече избор от една верига на наследяване. Класът взема точно способностите, които му трябват. Той не взема нищо повече.

{% include nav.html %}
