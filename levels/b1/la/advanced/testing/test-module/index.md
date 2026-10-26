---
title: Modulus Test
translations_gpt:
---

{% include menu.html %}

Instrumenta probandi per `use Test` oneras. Probatio simplicissima est `ok`, quae transit cum condicio eius vera est. Quaeque probatio etiam descriptionem accipere potest:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Cum id curris, hoc imprimit in forma probationum normali quae _TAP_ appellatur:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Quaeque probatio quae transit ut `ok` cum numero et descriptione ostenditur. Probatio deficiens `not ok` ostenderet. Ultima linea, `1..2`, est _consilium_, quod dicit quot probationes cucurrerint. Vocatio `done-testing` in fine hoc consilium sponte imprimit.

Cum certum valorem exspectas, `is` clarior est quam `ok`. Si probatio deficit, `is` et valorem exspectatum et valorem actualem ostendit:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Hoc imprimit `ok 1 - addition works`. Ut videas quomodo `is` problema nuntiet, da ei valorem exspectatum falsum:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nunc probatio deficit, et exitus prorsus explicat quid male evenerit:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Linea `not ok` defectum notat. Lineae infra ostendunt quid exspectatum sit et quid programma revera acceperit. Itaque cum certus valor refert, `is` utilior est quam simplex `ok`.

`ok`, `is` et `done-testing` iam sufficiunt ad archivum probationum utile. Argumentum sequens [ceteras comparationes](/la/advanced/testing/comparisons) addit.

{% include nav.html %}
