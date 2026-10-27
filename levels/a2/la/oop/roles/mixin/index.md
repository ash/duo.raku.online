---
title: Partem obiecto addere
translations_gpt:
---

{% include menu.html %}

Non necesse est partem in classem aedificare. Partem etiam obiecto dare potes quod iam exsistit. Ad hoc, operatore `but` utere. Partem in unum solum obiectum miscet. Hoc fit dum programma currit. Tum `but` novum obiectum cum parte reddit:

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

Solum `$loud` partem accepit. Classis `Greeter` et omnia alia obiecta `Greeter` eadem manent. Itaque `$quiet` adhuc modo solito salutat. Interdum pars et classis methodos eiusdem nominis habent. Tum versio partis vincit. Et `callsame` alteram methodum vocat, quam pars superscribit. Hic est originalis `greet` ex `Greeter`. Deinde effectus eius in litteras maiusculas mutatur.

Obiectum partem hoc modo accipere potest. Tum Raku scit id hanc partem facere:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` obiectum originale non mutat. Novum obiectum tibi dat. Fortasse ipsum obiectum mutare vis. Tum operatore `does` loco eius utere:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Partes in singula obiecta miscere potes. Itaque pro quoque obiecto decernis quam agendi rationem additam accipiat. Classe separata pro omni coniunctione non eges.

{% include nav.html %}
