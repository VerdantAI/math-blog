## Jug Example

From [this video](https://www.youtube.com/watch?v=vdabv9EkYrY)

```
[hailstone].
length(Ms, L), phrase(moves([jug(a,4,0), jug(b,3,0), jug(c, 7, 7)]), Ms).
```

## DCG

From [this video](https://www.youtube.com/watch?v=CvLsVfq6cks)

Okay, this blew my god-damned mind.  In the knowledge base I have

```
as --> [].
as --> [a], as.
```

Now you can query with the `phrase` command.  Insert some variables to see if they are equal and you get the completino of the phrase.  WOW!

```

?- phrase(as, [a,a,X, Y, a]).
X = Y, Y = a.
```
This is true only if X, Y are `a`.  F(n) cool.

## Text Game

From [this site](https://amzi.com/AdventureInProlog/index.php), shows off some nice features.