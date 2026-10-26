---
title: 'Risinājums: Piespiest tūlītēju izvērtēšanu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Atrodiet programmu failā [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Izvade

```
True
False
True
```

## Komentāri

1. Raku nevar aprēķināt diapazonu līdz `Inf` visu uzreiz. Tāpēc diapazons ir slinks, un `.is-lazy` dod `True`.

1. Prefikss `eager` liek Raku izveidot sarakstu uzreiz. Tāpēc rezultāts vairs nav slinks, un `.is-lazy` dod `False`. Tas ir tieši pretējais saraksta atzīmēšanai ar `lazy`.

1. Neizmantojiet `eager` ar diapazonu, kam nav beigu. `eager 1 .. Inf` mēģina aprēķināt katru elementu uzreiz. Tāpēc programma vienkārši iekaras. Tā nekad nebeidzas. Tā izmanto arvien vairāk atmiņas. Tas turpinās, līdz programmu aptur. Izmantojiet `eager` tikai tad, ja jūs zināt, ka sarakstam ir beigas.

1. Tas darbojas arī otrādi. `lazy 1..3` atzīmē īsu diapazonu kā slinku. Šim diapazonam ir beigas, bet tas tomēr ir slinks. Tāpēc `.is-lazy` dod `True`. Prefikss padara slinku jebkuru sarakstu, lai cik mazs tas būtu. Sarakstam nav jābūt bezgalīgam, lai tas būtu slinks.

{% include nav.html %}
