---
title: Adding methods at runtime
---

{% include menu.html %}

You can use the MOP not only to inspect a type. It can also **change** a type while the program runs. The meta-method `.^add_method` adds a new method to a class:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

The class `Empty` has no methods at all. Then `Empty.^add_method('greet', …)` adds a method called `greet`, which is given as an anonymous `method { … }`. From then on, every `Empty` object responds to `.greet`. It works just as if you had written it in the class.

This is real meta-programming. We tell the metaobject for `Empty` to grow a new method. The same protocol is behind features that you have already used. In principle, it works like this. When you write `class`, `role`, `has`, or `method`, the compiler builds your type for you. It does this with MOP methods like `.^add_method` and `.^add_attribute`.

We say “in principle” because this is a model of the language. It is not a promise about any one compiler. The object system is *defined* in terms of the MOP. But does a given implementation really send every declaration through those meta-methods? And can you see it doing this? That is up to each implementation. For the same reason, *calling* these meta-methods yourself depends on the implementation. Compilers may offer different meta-methods, and their exact behaviour can differ. So code with `.^add_method` and similar methods may work differently on each Raku.

Adding methods at run time is a powerful tool, but you will rarely need it. Most programs never use it. But it is what makes the object system of Raku open. The rules of classes are themselves written with the MOP, so you can extend them. In everyday code, the part of the MOP that you will actually use is inspection. You saw these meta-methods in the previous topic.

{% include nav.html %}
