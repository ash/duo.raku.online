---
title: Предефиниране на методи
translations_gpt:
---

{% include menu.html %}

Дъщерният клас наследява методи от родителския си клас. Но той може да има и своя версия на такъв метод. Това се нарича _предефиниране_. Извиквате метода върху обект от дъщерния клас. Тогава се изпълнява версията на дъщерния клас. Версията на родителя не се изпълнява.

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

И `Dog`, и `Cat` предефинират `speak`. Те наследяват метода `intro` от `Animal` и не го променят. Този метод извиква `self.speak`. Това извикване използва собствения `speak` на обекта:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Така един и същ наследен `intro` дава различни резултати. Причината е, че всеки обект има свой `speak`. Това е една от главните идеи на обектно-ориентираното програмиране. Кодът е общ. Но той работи по различен начин за всеки вид обект.

{% include nav.html %}
