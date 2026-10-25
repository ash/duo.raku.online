---
title: Allomorphes
---

{% include menu.html %}

Specta programma sequens. Antequam id curris, conare conicere. Qui valores inputi id frangerent, et in qua linea?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Programma hic tres variabiles scalares creat. Duae earum, `$i` et `$s`, sunt variabiles typatae. Hoc significat: `$i` solum integros servare potest, et `$s` solum chordas.

Typus quem `prompt` reddit a characteribus pendet quos scripsimus. Si chorda inputi integer esse potest, eventus typum `IntStr` habet. Hic typus est _et_ `Int` et `Str`. Itaque eum variabili `Int` vel variabili `Str` assignare potes. Exempli gratia, si `1234` inseris, programma non frangitur.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Typus `IntStr` est exemplum sic dicti _allomorphi_. Est typus datorum qui duos alios typos coniungit. Hic sunt pauca alia exempla.

Si chordam inseris quae integer esse non potest, programma frangitur. Hoc accidit cum `$input` ad `$i` assignamus:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Nota: errorem etiam accipis pro numero qui integer non est. Continens integrum numerum puncti fluctuantis vel rationalem servare non potest. Itaque Raku exceptionem emittit:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Secunda assignatio, `$s = $input`, numquam frangetur, quia chorda quodlibet inputum accipere potest.

🦋 Codicem fontis huius programmatis invenire potes in archivo [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
