---
title: Aldoni rolon al objekto
translations_gpt:
---

{% include menu.html %}

Vi ne devas enkonstrui rolon en klason. Vi ankaŭ povas doni rolon al objekto, kiu jam ekzistas. Por tio, uzu la operatoron `but`. Ĝi enmiksas la rolon en unu solan objekton. Tio okazas dum la programo ruliĝas. Poste `but` redonas novan objekton kun la rolo:

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

Nur `$loud` ricevis la rolon. La klaso `Greeter` kaj ĉiuj aliaj objektoj `Greeter` restas la samaj. Do `$quiet` ankoraŭ salutas laŭ la normala maniero. Foje la rolo kaj la klaso havas metodojn kun la sama nomo. Tiam la versio el la rolo venkas. Kaj `callsame` vokas la alian metodon, kiun la rolo superregas. Ĉi tie, ĝi estas la originala `greet` el `Greeter`. Poste ĝia rezulto ŝanĝiĝas al majuskloj.

Objekto povas ricevi rolon tiel. Tiam ĝi validas kiel objekto kun ĉi tiu rolo:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` ne ŝanĝas la originalan objekton. Ĝi donas al vi novan objekton. Eble vi volas ŝanĝi la objekton mem. Tiam uzu anstataŭe la operatoron `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Vi povas enmiksi rolojn en unuopajn objektojn. Do vi decidas por ĉiu objekto, kian kroman konduton ĝi ricevas. Vi ne bezonas apartan klason por ĉiu kombinaĵo.

{% include nav.html %}
