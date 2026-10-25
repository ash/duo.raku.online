---
title: Allomorphes
---

{% include menu.html %}

Specta hoc programma. Noli id statim currere. Potesne dicere qui valores inputi id frangant? Et in qua linea?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Programma tres variabiles scalares creat. Duae earum, `$i` et `$s`, sunt variabiles typatae. Itaque `$i` solum integros continere potest. Et `$s` solum chordas continere potest.

`prompt` valorem reddit. Typus eius a characteribus pendet quos scribimus. Interdum chorda inputi numerus integer esse potest. Tum eventus typum `IntStr` habet. Hic typus est _et_ `Int` et `Str`. Itaque eum variabili `Int` assignare potes. Eum etiam variabili `Str` assignare potes. Exempli gratia, `1234` inseris. Tum programma non frangitur.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Typus `IntStr` est exemplum _allomorphi_. Allomorphus est typus datorum ex duobus aliis typis factus. Hic sunt pauca alia exempla.

Nunc chordam insere quae integer esse non potest. Programma frangitur. Hoc accidit cum `$input` ad `$i` assignamus:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Interdum chorda inputi numerus est, sed non integer. Nota: tum quoque errorem accipis. Continens integrum numerum puncti fluctuantis continere non potest. Neque numerum rationalem continere potest. Itaque exceptionem accipis:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Secunda assignatio, `$s = $input`, numquam frangitur. Chorda quodlibet inputum accipere potest.

🦋 Codicem fontis huius programmatis invenire potes in archivo [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
