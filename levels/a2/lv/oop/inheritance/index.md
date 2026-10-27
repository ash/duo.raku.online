---
title: Mantošana
translations_gpt:
---

{% include menu.html %}

_Mantošana_ ļauj vienai klasei būvēties uz citas klases. Lai to izdarītu, rakstiet `is` aiz jaunās klases nosaukuma. Pēc tam rakstiet otras klases nosaukumu. Jaunā klase manto no otras klases. Tā iegūst visus otras klases atribūtus un metodes. Otrā klase ir _vecākklase_ jeb _bāzes klase_.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` nozīmē, ka `Dog` ir viens `Animal` veids. Klasē `Dog` mēs neko jaunu nerakstām. Bet `Dog` jau ir atribūts `name` no `Animal`. Tai ir arī metode `speak` no `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

`Dog` objekts ir arī `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Ar gudro sakritību `~~` jūs varat salīdzināt objektu ar tipu. Rezultāts ir patiess, ja objekts ir šī tipa. Tas ir patiess arī tad, ja objekts manto no šī tipa. Nākamais temats ir par bērnklasi. Bērnklase manto no vecākklases. Tā var aizstāt vecākklases metodi ar savu versiju.

{% include nav.html %}
