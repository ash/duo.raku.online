---
title: Alomorfoj
---

{% include menu.html %}

Rigardu ĉi tiun programon. Ne rulu ĝin ankoraŭ. Ĉu vi povas diri, kiuj enigaj valoroj rompas ĝin? Kaj ĉe kiu linio?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

La programo kreas tri skalarajn variablojn. Du el ili, `$i` kaj `$s`, estas tipitaj variabloj. Do `$i` povas teni nur entjerojn. Kaj `$s` povas teni nur ĉenojn.

`prompt` redonas valoron. Ĝia tipo dependas de la karakteroj, kiujn ni tajpas. Foje la eniga ĉeno povas esti entjera nombro. Tiam la rezulto havas la tipon `IntStr`. Ĉi tiu tipo estas _ambaŭ_ `Int` kaj `Str`. Do vi povas asigni ĝin al `Int` variablo. Vi ankaŭ povas asigni ĝin al `Str` variablo. Ekzemple, vi enigas `1234`. Tiam la programo ne rompiĝas.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

La tipo `IntStr` estas ekzemplo de _alomorfo_. Alomorfo estas datumtipo farita el du aliaj tipoj. Jen kelkaj pliaj ekzemploj.

Nun enigu ĉenon, kiu ne povas esti entjero. La programo rompiĝas. Tio okazas, kiam ni asignas `$input` al `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Foje la eniga ĉeno estas nombro, sed ne entjero. Notu, ke ankaŭ tiam vi ricevas eraron. Entjera ujo ne povas teni glitkoman nombron. Ĝi ankaŭ ne povas teni racian nombron. Do vi ricevas escepton:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

La dua asigno, `$s = $input`, neniam rompiĝas. Ĉeno povas preni ajnan enigon.

🦋 Vi povas trovi la fontkodon de ĉi tiu programo en la dosiero [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
