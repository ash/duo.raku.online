---
title: Композиция нескольких ролей
translations_gpt:
---

{% include menu.html %}

Класс может выполнять больше одной роли. Просто напишите `does` перед каждой ролью:

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

Теперь у класса `Duck` есть два метода. У него есть `move` из `Walk`. У него есть `dive` из `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Такое соединение ролей называется _композицией_. Вы собираете класс из нескольких отдельных кусочков поведения. Это часто даёт больше свободы, чем одна цепочка наследования. Класс берёт ровно те умения, которые ему нужны. Больше он ничего не берёт.

{% include nav.html %}
