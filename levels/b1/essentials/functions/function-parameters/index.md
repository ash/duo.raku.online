---
title: Function parameters
---

{% include menu.html %}

Now it is time to pass some data to a function. A function can take parameters, which you list in parentheses right after its name.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Now you can use the function and pass it different arguments:

```raku
greet('Alla');
greet('Karl');
```

Now the two calls of the same function give different results:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parameter or argument

People often use these two terms as if they mean the same. Both refer to ‘the same thing’, but from different points of view.

* A parameter is what the function expects.
* An argument is what you pass to it.

In the example above, `$name` is the function’s parameter. Its arguments are `'Alla'` and `'Karl'`.

%%/tipblock

## More parameters

A function can take more than one parameter. In this case, list them all with commas between them:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## No parameters

It is fine for a function to take no parameters at all. Then you can either add an empty pair of parentheses or leave them out completely. We left them out at [the beginning of this section](../).

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Signature

The list of parameters of a function is called a _signature_.

{% include nav.html %}
