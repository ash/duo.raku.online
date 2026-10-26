---
title: Class methods
---

{% include menu.html %}

You call most methods on an object. An object is an instance of a class. But you can also call a method on the class itself. This means that you call it on the type object. Such a method is often called a _class method_. It is useful for values and actions of the whole class. They do not belong to just one object.

You write a class method like any other method:

```raku
class Road {
    method speed-limit { 120 }
}
```

But you call it on the class name. You do not call it on an instance:

```raku
say Road.speed-limit; # 120
```

You already know one class method. But you did not call it that. It is `new`. You call `new` on the class, and it makes a new object.

A class method cannot use the attributes of an instance. There is no object behind it. So it can only work with common information. This information is the same for every object of the class. Sometimes the work needs the data of one object. Then use a normal method, and call it on an instance. Sometimes the work does not need such data. Then a class method is a good choice.

Class methods do not need an instance. But sometimes you have an object. Then you can still use its data in them:

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

This program prints the result that you expect:

```
The maximum speed on Road 404 is 120
```

Here you need an instance of the class. Without it, a call like `say Road.info` gives an error.

{% include nav.html %}
