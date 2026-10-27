---
title: Lomas pievienošana objektam
translations_gpt:
---

{% include menu.html %}

Jums nav obligāti jāiebūvē loma klasē. Jūs varat dot lomu arī objektam, kas jau eksistē. Tam lietojiet operatoru `but`. Tas iemaisa lomu tikai vienā objektā. Tas notiek, kamēr programma darbojas. Tad `but` atgriež jaunu objektu ar šo lomu:

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

Lomu saņēma tikai `$loud`. Klase `Greeter` un visi pārējie `Greeter` objekti paliek tādi paši. Tāpēc `$quiet` joprojām sveicina parastā veidā. Dažreiz lomai un klasei ir metodes ar vienādu nosaukumu. Tad uzvar lomas versija. Un `callsame` izsauc otru metodi, ko loma pārraksta. Šeit tā ir sākotnējā `greet` no `Greeter`. Tad tās rezultātu pārvērš lielajos burtos.

Objekts var šādi saņemt lomu. Tad tas skaitās tāds, kas dara šo lomu:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` nemaina sākotnējo objektu. Tas dod jums jaunu objektu. Varbūt jūs gribat mainīt pašu objektu. Tad tā vietā lietojiet operatoru `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Jūs varat iemaisīt lomas atsevišķos objektos. Tā jūs katram objektam izlemjat, kādu papildu uzvedību tas saņem. Jums nevajag atsevišķu klasi katrai kombinācijai.

{% include nav.html %}
