---
title: 'Solutio: Liber'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Inveni codicem fontem in archivo [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Exitus

```
Raku by Larry
```

## Commentarii

1. `has $.title` attributum et accessorem legendi creat. `has $.author` idem facit.

1. Programma utrumque accessorem in una chorda cum virgulis duplicibus adhibet. Quisque accessor in uncis crispis est: `{$b.title}` et `{$b.author}`. Cum uncis codicem in chordam ponere potes. Raku codicem in uncis exsequitur. Deinde effectum in chordam ponit. Itaque Raku accessores vocat, et valores eorum in chordam veniunt.

1. Utrumque attributum chorda est. Itaque bonum est eis genus `Str` dare.

{% include nav.html %}
