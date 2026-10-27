---
title: 'Solvo: Eraro pri negativa nombro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Vi povas trovi la fontkodon en la dosiero [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Eligo

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Komentoj

1. `Negative is Exception` permesas al vi ĵeti ĉi tiun klason. Ĝia metodo `message` konstruas la tekston el la atributo `n`.

1. `check` testas sian enigon. Por negativa nombro, ĝi ĵetas la propran escepton. La escepto iras el `check`. Ĝi iras al la `CATCH` en la bloko, kiu vokis `check`. Tie, `when Negative` kongruas kun ĝi laŭ ĝia tipo. Poste la `CATCH` presas la mesaĝon. Tio estas tre ofta, vera uzo de propraj esceptoj. Programo kontrolas sian enigon. Por malbona valoro, ĝi ĵetas escepton de sia propra tipo.

1. Kial estas `{ … }` ĉirkaŭ la voko? Fazero `CATCH` traktas nur la esceptojn el **sia propra bloko**. Tio estas la bloko, kiu havas la `CATCH` interne. Ĉi tie, la bloko tenas la vokon `check(-5)` kune kun ĝia `CATCH`. La voko povas malsukcesi, kaj la `CATCH` estas tie por ĝi. Do la escepto estas kaptata ĝuste ĉi tie. Poste la programo daŭras tuj post la bloko. Kaj se ne estas bloko? Tiam la `CATCH` funkcias por la tuta programo. Ĝi kaptas la escepton. Sed tiam la programo simple finiĝas. Ne estas bona loko por daŭrigi.

1. La lasta linio, `Negative.new(n => -10).throw`, montras la malan kazon. Ĉi tiu linio estas **ekster** la bloko. Do nenio kaptas la escepton. La escepto iras ĝis la plej supro. Tiam la programo mortas, aŭ haltas kun eraro. Ĝi presas la mesaĝon al la norma erara fluo. Ĝi ankaŭ presas retrospuron tien. Retrospuro montras, kie en la kodo la eraro okazis. Poste la programo finiĝas kun elirkodo alia ol `0`. Tio okazas al ĉiu escepto, kiun vi ne kaptas. Kaj tial la unua ĵeto bezonis `CATCH`. Sen ĝi, la programo ne povas daŭri.

{% include nav.html %}
