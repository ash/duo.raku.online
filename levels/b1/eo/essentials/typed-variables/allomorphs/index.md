---
title: Alomorfoj
---

{% include menu.html %}

Rigardu la sekvan programon. Antaŭ ol ruli ĝin, provu diveni. Kiuj enigaj valoroj rompus ĝin, kaj ĉe kiu linio?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

La programo kreas ĉi tie tri skalarajn variablojn. Du el ili, `$i` kaj `$s`, estas tipitaj variabloj. Tio signifas, ke `$i` povas konservi nur entjerojn, kaj `$s` povas konservi nur ĉenojn.

La tipo, kiun `prompt` redonas, dependas de la karakteroj, kiujn ni tajpis. Se la eniga ĉeno povas esti entjero, la rezulto havas la tipon `IntStr`. Ĉi tiu tipo estas _ambaŭ_ `Int` kaj `Str`. Do vi povas asigni ĝin al `Int` variablo aŭ al `Str` variablo. Ekzemple, se vi enigas `1234`, la programo ne rompiĝas.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

La tipo `IntStr` estas ekzemplo de tio, kion oni nomas _alomorfo_. Tio estas datumtipo, kiu kombinas du aliajn tipojn. Jen kelkaj pliaj ekzemploj.

Se vi enigas ĉenon, kiu ne povas esti entjero, la programo rompiĝas. Tio okazas, kiam ni asignas `$input` al `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Notu, ke vi ankaŭ ricevas eraron por nombro, kiu ne estas entjero. Entjera ujo ne povas konservi glitkoman aŭ racian nombron. Do Raku ĵetas escepton:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

La dua asigno, `$s = $input`, neniam rompiĝos, ĉar ĉeno povas preni ajnan enigon.

🦋 Vi povas trovi la fontkodon de ĉi tiu programo en la dosiero [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
