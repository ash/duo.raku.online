---
title: Function parameters
---

{% include menu.html %}

Now we pass some data to a function. A function can take parameters. Write them in parentheses right after the name of the function.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Now you can use the function. You can pass different arguments to it:

```raku
greet('Alla');
greet('Karl');
```

We call the same function two times. Now the results are different:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parameter or argument

People often use these two words in the same way. Both words are about ‘the same thing’. But they look at it from different sides.

* A parameter is what the function expects to get.
* An argument is what you pass to the function.

In the example above, `$name` is the parameter of the function. `'Alla'` and `'Karl'` are its arguments.

%%/tipblock

## More parameters

A function can take more than one parameter. Then put commas between them:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## No parameters

A function may also have no parameters at all. Then you can write an empty pair of parentheses. Or you can leave out the parentheses. We did this at [the beginning of this section](../).

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Signature

The list of parameters of a function is its _signature_.

{% include nav.html %}
