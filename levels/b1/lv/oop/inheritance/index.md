---
title: Mantošana
translations_gpt:
---

{% include menu.html %}

_Mantošana_ ļauj vienai klasei būvēties uz citas. Aiz jaunās klases nosaukuma jūs rakstāt `is` un citas klases nosaukumu. Tad jaunā klase manto visus šīs klases atribūtus un metodes. Šo klasi sauc par tās _vecākklasi_ (jeb _bāzes klasi_).

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

`Dog is Animal` nozīmē, ka `Dog` ir `Animal` paveids. Klasei `Dog` nav sava koda. Bet tai jau ir atribūts `name` un metode `speak` no `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

`Dog` objekts skaitās arī par `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

Gudrā sakritība `~~` pret tipu ir patiesa, ja objekts ir šī tipa. Tā ir patiesa arī tad, ja objekts manto no šī tipa. Nākamajā tematā bērnklase aizstāj mantotu metodi ar savu versiju.

{% include nav.html %}
