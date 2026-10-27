---
title: Композиция нескольких ролей
translations_gpt:
---

{% include menu.html %}

Класс может выполнять больше одной роли. Нужно просто перечислить каждую роль со своим `does`:

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

Теперь у класса `Duck` есть два метода: `move` из `Walk` и `dive` из `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Такое объединение ролей называется _композицией_. Она позволяет собрать класс из нескольких отдельных кусочков поведения. Часто это гибче, чем одна цепочка наследования. Класс может подмешать ровно те возможности, которые ему нужны, и ничего лишнего.

{% include nav.html %}
