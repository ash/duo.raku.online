---
title: Cross, hyper en genegeerd
translations_gpt: Cross-, hyper- en genegeerde meta-operatoren
---

{% include menu.html %}

Raku heeft meer meta-operatoren, niet alleen reductie en zip. Hier leer je er drie.

## Cross — `X`

De cross-meta-operator `X` neemt twee lijsten en maakt paren. Daarbij komt **elk** element van de ene lijst bij **elk** element van de andere. Dit heet het cartesisch product:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Net als zip kan `X` ook een operator nemen. Dan werkt de operator op elk paar. `X~` voegt elk paar samen tot een tekenreeks. `X*` vermenigvuldigt de twee getallen:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip loopt tegelijk door twee lijsten. Cross zet ze op alle mogelijke manieren samen.

## Hyper — `>>...<<`

Een hyper-meta-operator gebruikt een operator op **elk element** van een lijst. De operator staat tussen de pijlen `»…«`. Met alleen ASCII-tekens schrijf je `>>…<<`. Met twee lijsten werkt hij element voor element, net als zip. Soms heeft één kant maar één waarde. Dan gebruikt hij die waarde bij elk element van de lijst:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

De twee pijlen kunnen verschillende kanten op wijzen. De richting is belangrijk als de lijsten niet even lang zijn. Als een pijl **naar** een lijst wijst, kan Raku die lijst herhalen. Dan is hij even lang als de andere lijst. Hier zijn de vier combinaties in ASCII, met `<<` en `>>`:

* `>>op<<` — Raku herhaalt geen lijst. De lijsten moeten even lang zijn. Zo niet, dan krijg je een fout.
* `>>op>>` — Raku herhaalt de **rechter** lijst. Dan is hij even lang als de linker.
* `<<op<<` — Raku herhaalt de **linker** lijst. Dan is hij even lang als de rechter.
* `<<op>>` — Raku herhaalt de **kortere** lijst. Dan is hij even lang als de langere.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 herhaalt tot 10, 20, 10, 20
```

Er is ook een vorm met maar één operand. Die roept een methode aan op elk element. `>>.uc` zet elke tekenreeks in hoofdletters:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Een hyper-operatie vertelt Raku ook nog iets anders. Raku *mag* het werk parallel doen. Dan lopen verschillende delen van het werk tegelijk. Later leer je de vergelijkbare methode `.hyper`. Die staat in [het gedeelte over gelijktijdig programmeren](/nl/paradigms/hyper-race).

## Genegeerd — `!`

Zet `!` voor een vergelijkingsoperator. Dan krijg je het omgekeerde resultaat. Je kent `!=` al, oftewel "niet gelijk". Dat is gewoon deze meta-operator met `==`. Andere operatoren geven ook `True` of `False`, zoals `eq` en `%%`. De meta-operator werkt er op dezelfde manier mee:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — niet gelijk als tekenreeksen
say 5 !%% 2;     # True  — 5 is niet deelbaar door 2
```

`$a !op $b` is dus gewoon een nettere manier om `!($a op $b)` te schrijven.

Raku doet dit expres. Sommige talen zijn expres klein en eenvoudig, zoals Esperanto. Esperanto probeert voor elk ding één regelmatige manier te hebben. Raku is anders. Het geeft je graag meerdere manieren. Daarom heeft Raku het genegeerde `!eq`. Het heeft ook een speciale operator `ne`. De twee betekenen precies hetzelfde:

```raku
say 'a' ne 'b'; # True — dezelfde test als 'a' !eq 'b'
```

{% include nav.html %}
