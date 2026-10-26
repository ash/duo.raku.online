---
title: Proprietates incorporatae
---

{% include menu.html %}

_Trait_ cum verbo clave `is` addis, statim post declarationem. Trait tempore compilationis currit. Proprietatem fixam rei mutat quae trait habet. Raku multos traits habet. Iam paucos ex eis adhibuisti.

Normaliter parametra subroutinae sunt **tantum-lectu**. Eis intra routinam novos valores assignare non potes. Trait `is copy` tibi copiam tuam argumenti dat. Hanc copiam mutare potes. Mutatio intra routinam manet. Variabilis vocantis eadem manet:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Trait `is rw` longius procedit. Parametrum cum variabili vocantis coniungit. Parametrum intra routinam mutas. Tum mutationem etiam foris vides:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Sine uno ex his traits, `$n++` errorem dat. Nam parametrum tantum-lectu est.

Alius trait communis valorem defectivum statuit:

```raku
my $port is default(8080);
say $port; # 8080
```

Hic `is default` variabili valorem solitum dat. Variabilis hunc valorem habet cum nihil aliud in ea est. Multi traits incorporati sunt: `is rw`, `is copy`, `is default`, et alii. Quisque ex eis unum modum agendi specialem declarationi addit. Hoc tempore compilationis fit. Thema proximum ostendit: index traits clausus non est. [Traits tuos facere potes](/la/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
