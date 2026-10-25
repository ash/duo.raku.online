---
title: Viktorīna — Ligzdoti masīvi
---

{% include menu.html %}

Masīvu masīvs glabā temperatūras. Tās ir no četrām dienām. Katrai dienai ir trīs mērījumi:

```raku
my @data =
    [1.2, 2.3, 3.4],
    [4.5, 5.6, 6.7],
    [5.6, 6.7, 7.8],
    [6.7, 7.8, 8.9];
```

## Atsevišķi elementi

Ko izdrukā katra no šīm koda rindām?

{:.quiz-code}
5.6 | say @data[1][1]; # ␣␣␣
1.2 | say @data[0][0]; # ␣␣␣
7.8 | say @data[2][2]; # ␣␣␣

## Salīdzināšana

Katrs salīdzinājums dod loģisko rezultātu, `True` vai `False`. Izvēlieties pareizo rezultātu.

{:.quiz-select}
False | `@data[0][0] == @data[2][2]` ir&nbsp; (: False, True :)
True | `@data[1][1] == @data[2][0]` ir&nbsp; (: False, True :)

## Garumi

Šeit ir daži `elems` metodes izsaukumi. Kādu vērtību atgriež katrs izsaukums?

{:.quiz-select}
4 | `@data.elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[0].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)
3 | `@data[1].elems` —&nbsp; (: 1, 2, 3, 4, 5 :) 
3 | `@data[2].elems` —&nbsp; (: 1, 2, 3, 4, 5 :)

{% include quiz.html %}

{% include nav.html %}
