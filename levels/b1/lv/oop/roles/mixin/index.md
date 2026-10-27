---
title: Lomas pievienošana objektam
translations_gpt:
---

{% include menu.html %}

Lomai nav obligāti jābūt iebūvētai klasē. Jūs varat to dot arī objektam, kas jau eksistē, ar operatoru `but`. Tas izpildes laikā iemaisa lomu vienā objektā. Tad tas atgriež jaunu objektu, kam ir šī loma:

```raku
role Loud {
    method greet {
        callsame().uc;
    }
}

class Greeter {
    method greet {
        'Hello';
    }
}

my $quiet = Greeter.new;
my $loud  = Greeter.new but Loud;

say $quiet.greet; # Hello
say $loud.greet;  # HELLO
```

Lomu saņēma tikai `$loud`. Klase `Greeter` un visi pārējie `Greeter` objekti paliek tādi paši. Tāpēc `$quiet` joprojām sveicina parastajā veidā. Dažreiz gan loma, gan klase definē metodi ar vienādu nosaukumu. Tādā gadījumā uzvar lomas versija. Un `callsame` izsauc metodi, ko tā pārrakstīja. Šeit tā ir sākotnējā `greet` no `Greeter`. Tās rezultāts tad tiek pārvērsts lielajos burtos.

Objekts ar iemaisītu lomu skaitās tāds, kas šo lomu dara:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` atstāj sākotnējo objektu tādu, kāds tas bija, un dod jums jaunu. Ja jūs gribat mainīt pašu esošo objektu, tā vietā lietojiet operatoru `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Kad jūs iemaisāt lomas atsevišķos objektos, jūs izlemjat, kādu papildu uzvedību saņem katrs objekts. Jums nav jādefinē atsevišķa klase katrai kombinācijai.

{% include nav.html %}
