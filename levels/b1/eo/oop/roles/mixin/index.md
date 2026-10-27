---
title: Aldoni rolon al objekto
translations_gpt:
---

{% include menu.html %}

Rolo ne devas esti enkonstruita en klason. Vi ankaŭ povas doni ĝin al objekto, kiu jam ekzistas, per la operatoro `but`. Ĝi enmiksas la rolon en unu solan objekton je rultempo. Poste ĝi redonas novan objekton, kiu havas la rolon:

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

Nur `$loud` ricevis la rolon. La klaso `Greeter` kaj ĉiuj aliaj objektoj `Greeter` restas la samaj. Do `$quiet` ankoraŭ salutas laŭ la normala maniero. Foje la rolo kaj la klaso ambaŭ difinas metodon kun la sama nomo. En tiu kazo, la versio de la rolo venkas. Kaj `callsame` vokas la metodon, kiun ĝi superregis. Ĉi tie, tio estas la originala `greet` el `Greeter`. Ĝia rezulto poste estas ŝanĝita al majuskloj.

Objekto kun enmiksita rolo validas kiel faranta tiun rolon:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` lasas la originalan objekton tia, kia ĝi estis, kaj donas al vi novan. Se vi volas ŝanĝi ekzistantan objekton mem, uzu anstataŭe la operatoron `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Kiam vi enmiksas rolojn en unuopajn objektojn, vi decidas, kian kroman konduton ricevas ĉiu objekto. Vi ne devas difini apartan klason por ĉiu kombinaĵo.

{% include nav.html %}
