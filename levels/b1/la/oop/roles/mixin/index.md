---
title: Partem obiecto addere
translations_gpt:
---

{% include menu.html %}

Non necesse est partem in classem aedificari. Unam etiam obiecto dare potes quod iam exsistit, operatore `but`. Partem in unum obiectum tempore exsecutionis miscet. Deinde novum obiectum reddit quod partem habet:

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

Solum `$loud` partem accepit. Classis `Greeter` et omnia alia obiecta `Greeter` eadem manent. Itaque `$quiet` adhuc modo solito salutat. Interdum pars et classis ambae methodum eiusdem nominis definiunt. Tum versio partis vincit. Et `callsame` methodum vocat quam superscripsit. Hic haec est originalis `greet` ex `Greeter`. Effectus eius deinde in litteras maiusculas mutatur.

Obiectum cum parte immixta illam partem facere censetur:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` obiectum originale relinquit ut erat et novum tibi dat. Si ipsum obiectum exsistens mutare vis, operatore `does` loco eius utere:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Cum partes in singula obiecta misces, decernis quam agendi rationem additam quodque obiectum accipiat. Non necesse est classem separatam pro omni coniunctione definire.

{% include nav.html %}
