---
title: Citante ĉenajn tabelojn
---

{% include menu.html %}

Foje la eroj de tabelo estas mallongaj ĉenoj sen spacoj. Raku havas belan manieron doni al tia tabelo ĝiajn valorojn.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Vi povas meti pliajn spacojn ĉirkaŭ la angulaj krampoj. Aŭ vi povas skribi ilin sen spacoj. Vi decidas. La kompililo akceptas ambaŭ manierojn.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Ambaŭ manieroj donas la saman rezulton kiel ĉi tiu simpla versio:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Tabelo aŭ Listo

Notu unu aferon pri la ekzemploj supre. La citaĵo `< . . . >` kreas `List`. Ĝi ne kreas `Array`. Vi povas kontroli tion per la metodo `WHAT`:

```raku
say <a b c>.WHAT; # (List)
```

Sed vi povas asigni ĝin al tabelo. Tiam vi ricevas tabelon kun la elementoj de la listo.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
