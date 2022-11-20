# NeSy Notes

There isn't much of a community around "Neuro-Semantic" or "Nuero-Symbolic" or "Neural*" or whatever yet, so it makes it hard to find materials. The most mature software libraries I've found so far are both from IBM.  Why do I always have to get into this shit so early?

* [Logical Tensor Networks](https://github.com/logictensornetworks) This is a tensorflow based project, stale since Spring 2022.  It has some nice ideas, I just bristle at how much it fawns over the tensforflow style.
* [Logical Neural Networks](https://github.com/IBM/LNN)  As of Fall 2022, this method seems really promising, but the library is hardly documented.  It's probably not fair to call an IBM project "stale" after a month of inactivity, since they move on a calendar rather than a clock, but damn!  Call me back!

A few community sites, none of which are too active.  This seems like the "land-grab" phase of the movement.  I hate that, more time spent on branding than on doing.

* [MIT SAIL site](http://www.neurosymbolic.org/)
* [ListSERV](https://www.jiscmail.ac.uk/cgi-bin/wa-jisc.exe?A0=NESY)
* [Hitzler's Site](https://people.cs.ksu.edu/~hitzler/nesy/) Hitzler seems to be the motion on NeSy.
* [Garcez' Site](https://www.staff.city.ac.uk/~aag/) Seems to be the godfather

Professor Pascal Hitzler seems to be defining the effort, and he writes well.  I can't wait for his [book](https://www.iospress.com/catalog/books/neuro-symbolic-artificial-intelligence-the-state-of-the-art) (can't really be purchased yet).

# What Remains To Be Known

## Trained Model, Semantic Rules

Well, shit, everything, BUT!  I'd love a combined example of neural and semantic model.  To build on an internet favorite, how about

```
:- Brian has allergies.
:- If Brian has taken his allergy medication, he will not sneeze.
:- An animal has entered the back doggie door.  If it is a cat AND Brian has NOT taken his medication, he will sneeze
```

This gives us a few different ways to mess with the integration.  In parlance, this might be "upward" and "downward", but I'm not in the mood to taxonomize right now.

### Predict Sneezing
Given a trained cat CNN, test the model and read the result, then predict if Brian will sneeze.

### Predict Cats
Man, the internet loves cats.  If we take 1,000,000 images of things that come through the back door and a label of "Sneeze" or "No Sneeze", can we train a cat neuron?


## Non-Combatant

So much of AI and ML is about branding for publications.  In fact, those two terms don't contribute anything except when pitching for VC money or trying to bring attention to your blog.  I, myself, am a non-combatant in this fight.  I just need to solve problems and build fun things, so I don't really care who gets credit. Hopefully I can agitate enough to keep the conversation going.