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

## Web Server

This is a pretty [good tutorial](https://github.com/Anniepoo/swiplwebtut/blob/master/web.adoc)

## Basic Hospitality

Doing this with [Poe](poe.pl) right now.  Within your knowledge base (KB), you have the fact

> Mr. Fawlty either wants a new room or new sheets and a roll-away bed.

We want to be able to ask / receive
* What would make Mr. Fawlty happy?
  * New room -OR-
  * New sheets AND roll-away bed
* Who wants a new room?
  * Mr. Fawlty 

This is a [Question Answering System](https://en.wikipedia.org/wiki/Question_answering) and we have to walk slowly to it.  Let's not be Watson, but let's make shit happen.

## Stack Overflow

Questions on Stack Overflow this stuff has generated.
* (https://stackoverflow.com/questions/74649091/prolog-predicate-with-multiple-lists)
* (https://stackoverflow.com/questions/74620911/sum-of-random-digits-in-prolog)
