---
title: Cross, hyper en genegeerd
translations_gpt: Cross-, hyper- en genegeerde meta-operatoren
---

{% include menu.html %}

Naast reductie en zip heeft Raku nog meer meta-operatoren. Drie daarvan zijn nu handig om te kennen.

## Cross — `X`

De cross-meta-operator `X` neemt twee lijsten. Hij koppelt **elk** element van de ene aan **elk** element van de andere. Dit heet het cartesisch product:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Net als zip kan hij een operator omhullen, die dan op elk paar werkt. `X~` voegt elk paar samen tot een tekenreeks, en `X*` vermenigvuldigt de waarden:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip loopt tegelijk door twee lijsten, terwijl cross ze op alle mogelijke manieren combineert.

## Hyper — `>>...<<`

Een hyper-meta-operator past een operator toe op **elk element** van een lijst. De operator staat tussen de puntige haken `»…«`, of in de ASCII-vorm `>>…<<`. Met twee lijsten werkt hij element voor element, net als zip. Met één waarde aan één kant rekt hij die waarde uit over de hele lijst:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

De twee pijlen hoeven niet dezelfde kant op te wijzen. Hun richting bepaalt wat er gebeurt als de lijsten niet even lang zijn. Als een pijl **naar** een lijst wijst, mag die lijst zich herhalen tot hij bij de andere past. Hier zijn de vier combinaties, geschreven in ASCII met `<<` en `>>`:

* `>>op<<` — geen lijst herhaalt zich, dus de lijsten moeten al even lang zijn, anders is er een fout;
* `>>op>>` — de **rechter** lijst herhaalt zich tot hij bij de linker past;
* `<<op<<` — de **linker** lijst herhaalt zich tot hij bij de rechter past;
* `<<op>>` — de **kortere** lijst herhaalt zich tot hij bij de langere past.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 herhaalt tot 10, 20, 10, 20
```

Er is ook een unaire vorm, met maar één operand. Die roept op elk element een methode aan. `>>.uc` zet elke tekenreeks om in hoofdletters:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hyper-operaties laten ook zien dat het werk parallel gedaan *mag* worden. Je ziet de verwante methode `.hyper` later, in [het gedeelte over gelijktijdig programmeren](/nl/paradigms/hyper-race).

## Genegeerd — `!`

Als je `!` voor een vergelijkingsoperator zet, krijg je het omgekeerde resultaat. Het bekende `!=` (niet gelijk) is precies deze meta-operator, gebruikt met `==`. Hetzelfde werkt voor andere Booleaanse operatoren, zoals `eq` en `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — niet gelijk als tekenreeksen
say 5 !%% 2;     # True  — 5 is niet deelbaar door 2
```

Kort gezegd is `$a !op $b` gewoon een nettere schrijfwijze voor `!($a op $b)`.

Dit is met opzet zo. Sommige talen, zoals Esperanto, zijn met opzet klein en eenvoudig. Ze proberen voor elk ding één regelmatige manier te hebben. Raku is anders en geeft je graag meerdere manieren. Daarom bestaat het genegeerde `!eq` gewoon naast de speciale operator `ne`. De twee betekenen precies hetzelfde:

```raku
say 'a' ne 'b'; # True — dezelfde test als 'a' !eq 'b'
```

{% include nav.html %}
