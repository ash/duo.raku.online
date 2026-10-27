---
title: 'Решение: Танцуващ робот'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Намерете програмата във файла [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Изход

```
beep
beep
spinning around
```

## Коментари

1. Това не е като в предишните примери. `Dancing` не заменя метод, който вече съществува. Тя носи съвсем нов метод, `dance`. Класът `Robot` не знае нищо за този метод.

1. `Robot.new but Dancing` вмесва ролята в един-единствен обект. Това става, докато програмата работи. Затова `$dancing` може да прави две неща. Той може да `speak`, от класа. Той може и да `dance`, от ролята. Обикновеният `$plain` знае само `speak`.

1. Новата способност принадлежи само на този един обект. Тя не принадлежи на класа `Robot`. Затова `$plain.dance` дава грешка. `$plain` никога не е получавал ролята.

{% include nav.html %}
