---
title: 'Solvo: Eraro pri negativa nombro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `Negative is Exception` ebligas ĵeti la klason. Ĝia metodo `message` konstruas la tekston el la atributo `n`.

1. `check` testas sian enigon kaj ĵetas la propran escepton por negativa nombro. La escepto vojaĝas el `check` al la `CATCH` en la vokanta bloko. Tie, `when Negative` kongruas kun ĝi laŭ ĝia tipo kaj presas la mesaĝon. Tio estas tre ofta, vera uzo de propraj esceptoj. Kodo kontrolas sian enigon kaj raportas malbonajn valorojn per escepto de sia propra tipo.

1. Kial estas `{ … }` ĉirkaŭ la voko? Fazero `CATCH` traktas nur la esceptojn ĵetitajn en **la bloko, kiu enhavas ĝin**. La bloko metas la riskan `check(-5)` kune kun la `CATCH`, kiu gardas ĝin. Do la escepto estas kaptata ĝuste ĉi tie, kaj la programo daŭras tuj post la bloko. Sen la bloko, la `CATCH` gardus anstataŭe la tutan programon. Ĝi kaptus la escepton, sed tiam la programo simple finiĝus. Ne estus natura loko por daŭrigi.

1. La fina `Negative.new(n => -10).throw` montras la alian flankon de tio. Ĝi estas **ekster** la bloko, do nenio kaptas ĝin. La escepto iras ĝis la plej supro, kaj la programo mortas. Ĝi presas la mesaĝon kaj retrospuron al la norma erara fluo. Poste ĝi finiĝas kun elirkodo, kiu ne estas nulo. Tio okazas al ĉiu escepto, kiun vi ne kaptas. Kaj ĝuste tial la unua ĵeto bezonis `CATCH` por postvivi.

{% include nav.html %}
