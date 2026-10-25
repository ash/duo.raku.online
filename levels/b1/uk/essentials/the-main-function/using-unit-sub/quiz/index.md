---
title: Тест* — Використання визначення на рівні модуля
---

{% include menu.html %}

## 1

Виберіть декларативний оператор, щоб програма була правильною.

{:.quiz-select}
unit | (: my, multi, unit :) `sub MAIN(Str $name);`
. | `say "Hello, $name!";`

## 2

Вирішіть, чи правильна програма.

```raku
unit sub MAIN(Str $name) {
    say "Hello, $name!";
}
```

{:.quiz-select}
valid | Ця програма є&nbsp; (: valid, invalid :) | Незважаючи на наявність `unit`, ви все ще можете додати фігурні дужки, але це зайве.

## 3

Чи правильна ця програма?

```raku
unit multi sub MAIN() {
    say 'Hello, everyone!';
}

unit multi sub MAIN($name) {
    say "Hello, $name!";
}
```

{:.quiz-select}
invalid | Ця програма є&nbsp; (: valid, invalid :) | Помилка: `Cannot use 'unit' with individual multi candidates.`

{% include quiz.html %}

{% include nav.html %}
