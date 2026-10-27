---
title: 'La fazero `CATCH`'
translations_gpt:
---

{% include menu.html %}

La bloko `try` estas oportuna, sed ĝi traktas la tutan blokon kiel unu unuon. La bloko aŭ funkcias, aŭ ne funkcias. La fazero `CATCH` donas al vi pli da regado. Ĝi permesas al vi trakti escepton _ene_ de la bloko, kie ĝi okazis. Poste vi decidas, kion fari.

`CATCH` estas fazero, kiel tiuj, kiujn vi vidis en la [sekcio pri regofluo](/eo/advanced/phasers). Vi povas meti ĝin ie ajn ene de bloko. Ĝi ruliĝas nur, se escepto estas ĵetata en tiu bloko. Vi ricevas la escepton kiel la temvariablon `$_`:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

La programo presas:

```
Caught: Boom!
after
```

La bloko `default` ene de `CATCH` traktas ĉiun escepton. Post kiam ĝi ruliĝis, la escepto kalkuliĝas kiel traktita. Do la programo ne haltas. Ĝi daŭras post la bloko ĉirkaŭ la `CATCH`, kaj tial `after` estas presata.

Sen la `CATCH`, la `die` finus la programon, antaŭ ol ĝi atingus `after`.

{% include nav.html %}
