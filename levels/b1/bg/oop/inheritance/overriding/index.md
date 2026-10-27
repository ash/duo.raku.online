---
title: Предефиниране на методи
translations_gpt:
---

{% include menu.html %}

Дъщерният клас може да има своя собствена версия на метод, който наследява. Това се нарича _предефиниране_. За обект от дъщерния клас извикването на метода изпълнява версията на дъщерния клас. Версията на родителя не се изпълнява.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` и `Cat` предефинират всеки своя `speak`. Методът `intro` идва от `Animal` без промени. Той извиква `self.speak`, а това извикване използва онзи `speak`, който принадлежи на действителния обект:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Така един и същ наследен `intro` дава различни резултати, защото всеки обект има свой собствен `speak`. Това е една от основните идеи на обектно-ориентираното програмиране. Общият код променя поведението си според вида на обекта.

{% include nav.html %}
