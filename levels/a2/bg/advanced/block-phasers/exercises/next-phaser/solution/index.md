---
title: 'Solution: След всяка стъпка'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Изходният код на тази програма можете да намерите във файла [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Изход

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Коментари

1. Фазерът `NEXT` е първи в кода. Но той се изпълнява в *края* на всяка обиколка. Тогава тялото вече е добавило текущото число към `$sum`.

1. Така след първата обиколка `$sum` е `1`. След втората обиколка е `3`. След третата обиколка е `6`. С `NEXT` цикълът може да изпълнява код между обиколките си. `FIRST` е различен: той се изпълнява веднъж в началото. `LAST` също е различен: той се изпълнява веднъж в края.

{% include nav.html %}
