---
title: Soft failures
---

{% include menu.html %}

An exception from `die` stops everything at once. Sometimes this is too much. Maybe a subroutine cannot give a result. It must report this problem. But the caller must decide if the program stops. The caller is the code that called the subroutine. For this case, Raku has _soft failures_. You make them with `fail`.

A subroutine can call `fail`. Then it does not throw an exception at once. Instead, it returns a special `Failure` object to the caller. A `Failure` is a value with an error inside. It is undefined. So the caller can quietly check for it:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

The first call works and returns `5`. The second call fails. It returns a `Failure`. For this object, `defined` gives `False`. So the caller can test the result before it uses it.

Why is a `Failure` called _soft_? It becomes a real, thrown exception only in one case. This is when you use it as a value without a check. But you can handle it, for example, with a test for `defined`. Then it stays quiet. So a subroutine can report a problem. The whole program does not have to stop.

## You know this already

This kind of failure is put off until later. Not only `fail` works in this way. Earlier in this part, you saw the same idea two times.

A **division by zero** quietly makes a value. It throws an exception only when you really use the value:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

A **failing external program** returns a `Proc`. It throws an exception only in one case. That is when you throw the `Proc` away without handling it. Keep the `Proc` and look at it. Then it stays a quiet value:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In each case, a problem does not stop the program right away. It becomes a value. You can check this value. It turns into a thrown exception only in two cases. You use it without a check, or you ignore it. The topic [Not every error is immediate](/oop/try/deferred-errors) shows both examples together.

{% include nav.html %}
