---
title: 'Решение: Номерирайте редовете'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Намерете програмата във файла [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Изход

```
1: apple
2: banana
3: cherry
```

## Коментари

1. `spurt` записва трите думи във файла, с нови редове между тях.

1. `.IO.lines` дава редовете един по един, без новите редове в края им. Държим брояч `$n` и го увеличаваме при всяка обиколка. Така всеки ред се отпечатва заедно с позицията си във файла.

{% include nav.html %}
