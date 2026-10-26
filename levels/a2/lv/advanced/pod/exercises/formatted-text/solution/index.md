---
title: 'Risinājums: Formatēts teksts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Atrodiet programmu failā [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Izvade

Palaidiet to ar `raku --doc`:

```
Greeting

Hello, world!
```

## Komentāri

1. `B<world>` padara vārdu treknu. Vienkāršā tekstā tas izskatās kā parasts teksts. Bet bagātāki formāti to rāda treknrakstā.

1. `raku --doc` parāda Pod kā tekstu. Tas neizpilda nekādu programmas kodu.

1. Vai gribat treknrakstu tiešām *redzēt*? Tad pārvērtiet Pod formātā ar stiliem. Vispirms instalējiet atveidotāja moduli, piemēram, `Pod::To::HTML`. Izmantojiet tam `zef install Pod::To::HTML`. Tad palaidiet `raku --doc=HTML formatted-text.raku`. Tagad vārds ir HTML elementā `<b>`. Vienkāršs teksts no `--doc` ir citāds. Tas nevar parādīt treknrakstu failā vai cauruļvadā.

{% include nav.html %}
