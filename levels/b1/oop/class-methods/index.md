---
title: Class methods
---

{% include menu.html %}

Most methods are called on an object, which is an instance of a class. But you can also call a method on the class itself. In other words, you call it on the type object. People often call such a method a _class method_. It is useful for values and operations that belong to the whole class. They do not belong to one particular object.

You define a class method in exactly the same way as any other method:

```raku
class Road {
    method speed-limit { 120 }
}
```

But you call it on the class name instead of an instance:

```raku
say Road.speed-limit; # 120
```

In fact, you have already used a class method without calling it one. `new` is a method that you call on the class to create a new object.

A class method cannot use instance attributes, because there is no particular object behind it. So it only works with information that every object of the class shares. If the work depends on the data of one object, use an ordinary method. Call it on an instance. If it does not, a class method is the natural choice.

Class methods do not need an instance. Still, when you do have an object, you can use its data in them:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

This program prints the result you would expect:

```
The maximum speed on Road 404 is 120
```

Without an object of the class, a call such as `say Road.info` would cause an error.

{% include nav.html %}
