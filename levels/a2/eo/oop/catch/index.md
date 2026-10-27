---
title: 'La fazero `CATCH`'
translations_gpt:
---

{% include menu.html %}

La bloko `try` estas facile uzebla. Sed por `try`, la tuta bloko estas unu peco. La bloko aŭ funkcias, aŭ malsukcesas. La fazero `CATCH` donas al vi pli da regado. Escepto estas eraro, kiu haltigas la programon. Per `CATCH`, vi traktas la escepton _ene_ de ĝia bloko. Tio estas la bloko kun la eraro. Tie vi decidas, kion fari.

`CATCH` estas fazero. Fazero estas speciala bloko. Raku mem rulas ĝin en certa momento. Vi renkontis fazerojn en la [sekcio pri regofluo](/eo/advanced/phasers). Vi povas meti `CATCH` ie ajn ene de bloko. Ĝi ruliĝas nur, se kodo en ĉi tiu bloko ĵetas escepton. Vi ricevas la escepton en la temvariablo `$_`:

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

La bloko `default` ene de `CATCH` traktas ĉiun escepton. Post kiam ĝi ruliĝas, la escepto kalkuliĝas kiel traktita. Do la programo ne haltas. Ĝi daŭras post la bloko kun la `CATCH`. Tial la programo presas `after`.

Sen la `CATCH`, la `die` haltigas la programon. La programo neniam atingas `after`.

{% include nav.html %}
