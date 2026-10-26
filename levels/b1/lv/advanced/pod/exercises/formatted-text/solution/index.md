---
title: 'Risinājums: Formatēts teksts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Atrodiet programmu failā [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Izvade

Palaidiet ar `raku --doc`:

```
Greeting

Hello, world!
```

## Komentāri

1. `B<world>` atzīmē vārdu treknrakstā. Kad to atveido kā vienkāršu tekstu, tas izskatās kā parasts teksts. Taču bagātāki formāti to rāda treknrakstā.

1. `raku --doc` atveido Pod, bet neizpilda nekādu programmas kodu.

1. Lai treknrakstu tiešām *redzētu*, atveidojiet Pod formātā, kuram ir stili. Instalējiet atveidotāju, piemēram, `Pod::To::HTML`, ar `zef install Pod::To::HTML`. Tad palaidiet `raku --doc=HTML formatted-text.raku`. Tagad vārds iznāk HTML elementā `<b>`. Vienkārša teksta izvade no `--doc` ir citāda. Tā nevar parādīt treknrakstu, kad tā nonāk failā vai cauruļvadā.

{% include nav.html %}
