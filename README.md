# space_invaders

SpaceInvaders is _another_ coding challenge whose main point is to identify well-known text-based shapes, documented down below.

![DAMN GIF](https://d2ffutrenqvap3.cloudfront.net/items/072I051t00273R3T3421/Screen%20Recording%202018-02-13%20at%2009.13%20PM.gif?v=d4866da9)

## Usage

To get the program running, two ways are available once the repository's been cloned. The easiest one is to build the image with Docker, which will execute without any further configuration needed.

```
$ docker build .
```

However, by using Docker, you can't modify the input for the program without changing the Dockerfile. In case you would like to try out the code with a different input, let's say a different picture, you can still do it manually following the steps down below:

```
$ rvm install ruby-2.5.0 # if missing.
$ rvm use 2.5.0          # if it's not the default.
$ bundle install
$ rake scan[path/to/file]
```

## Shapes

### Predator

~~~~
--o-----o--
---o---o---
--ooooooo--
-oo-ooo-oo-
ooooooooooo
o-ooooooo-o
o-o-----o-o
---oo-oo---
~~~~

### Alien
~~~~
---oo---
--oooo--
-oooooo-
oo-oo-oo
oooooooo
--o--o--
-o-oo-o-
o-o--o-o
~~~~

### Example radar image:
~~~~
----o--oo----o--ooo--ooo---------o---oo-o----oo---o--o---------o----o------o----------------o--o--o-
--o-o-----oooooooo-oooooo-------o----o------ooo-o---o--o----o------o--o---ooo-----o--oo-o------o----
--o--------oo-ooo-oo-oo-oo------------------ooooo-----o-----o------o---o--o--o-o-o------o----o-o-o--
-------o--oooooo--o-oo-o--o-o-----oo--o-o-oo--o-oo-oo-o--------o-----o------o-ooooo---o--o--o-------
------o---o-ooo-ooo----o------o-------o---oo-ooooo-o------o----o--------o-oo--ooo-oo-------------o-o
-o--o-----o-o---o-ooooo-o-------o----o---------o-----o-oo-----------oo----ooooooo-ooo-oo------------
o-------------ooooo-o--o--o--o-------o--o-oo-oo-o-o-o----o-------------o--oooo--ooo-o----o-----o--o-
--o-------------------------oo---------oo-o-o--ooo----o-----o--o--o----o--o-o-----o-o------o-o------
-------------------o-----------------o--o---------------o--------o--oo-o-----oo-oo---o--o---o-----oo
----------o----------o------------------o--o----o--o-o------------oo------o--o-o---o-----o----------
------o----o-o---o-----o-o---------oo-o--------o---------------------------------o-o-o--o-----------
---------------o-------------o-------o-------------------o-----o---------o-o-------------o-------oo-
-o--o-------------o-o--------o--o--oo-------------o----ooo----o-------------o----------oo----o---o-o
-o--o-------------o----oo------o--o-------o--o-----------o----o-----o--o----o--oo-----------o-------
-o-----oo-------o------o---------------o--o----------o-----o-------o-----------o---o-o--oooooo-----o
-o--------o-----o-----o---------oo----oo---o-----------o---o--oooo-oo--o-------o------oo--oo--o-----
------------o-------------------o----oooo-------------oo-oo-----ooo-oo-----o-------o-oo-oooooooo---o
-----------------------------------oooooooo---o-----o-------o--oooooo-o------------o-o-ooooooo-o----
------------o------o-------o-------oo-oo--o--o---------o--o-o-o-ooooo-o--------------oo-o----o-oo-o-
---o-o----------o--------oo----o----oooooooo-------o----o-o-o-o-----o-o-----o----------ooo-oo--o---o
-o-o---------o-o---------------o--o--o--ooo---ooo-------o------oo-oo------------o--------o--o-o--o--
-------oo---------------------------o-oo----------o------o-o-------o-----o----o-----o-oo-o-----o---o
---o--------o-----o-------o-oo-----oo--oo-o----oo----------o--o---oo------oo----o-----o-------o-----
---o--ooo-o---------o-o----o------------o---------o----o--o-------o-------------o----------------oo-
---o------o----------------o----o------o------o---oo-----------o-------------o----------oo---------o
--oo---------------o--o------o---o-----o--o-------------o------o-------o-----o-----o----o------o--o-
-o-------o----------o-o-o-------o-----o--o-o-----------o-oo-----------o------o---------o-----o-o----
----------o----o-------o----o--o------o------------o---o---------------oo----o-----ooo--------------
----o--------oo----o-o----o--o------ooo----o-oooo---o--o-oo--------o-oo-----o-o---o-o--o-----oo-----
------o--------o-ooooo----o---o--o-----o---------------o-o-------o-----o----------------------------
o-------oo----o--oooooo-o---o--o------oooo----------o-oo-------o---o----------o------oo-------------
-o---o----------o--oo-oo-o---o-----o-o-----------------------oo--o------o------o--------------------
-----oo-o-o-o---ooooooooo----o----o--------o--o---oo---o------------o----------o-o---o------o-o--oo-
------o------o---ooo-o---------------------------o--o---o---o----o--o-------o-----o------o----o----o
-------o----------ooo-o-----o----o---o--o-oo--o--o-o--o------o--o-oo---ooo------------------------o-
-o-------o------o-o--ooo--o---o---oo-----o----o-------------o----o-ooo-o------o--o-o------o-o-------
---oo--o---o-o---------o---o--------------o--o-----o-------o-----o--o---o-oo--------o----o----o-----
o------o----oo-o-----------oo--o---o--------o-o------o-------o-o------o-oo---------o-----oo---------
----o--o---o-o-----------o---o------------o-------o----o--o--o--o-o---------------o-----------------
-------oo--o-o-----o-----o----o-o--o----------------------o-------o------o----oo----ooo---------o---
o-----oo-------------------o--o-----o-----------o------o-------o----o-----------o----------------o--
--o---o-------o------------o--------------------o----o--o-------------oo---o---------oo--------o----
--o--------o---------o------------o------o-------o------------o-------o---o---------ooooo-----------
------o--------------o-o-o---------o---o-------o--o-----o-------o-o----------o-----oo-ooo----------o
--o---------------o----o--oo-------------o---------o-------------------oo---------oo-o-ooo----------
-o-----------o------ooo----o----------------ooo-----o--------o--o---o-----------o-o-oooooo--------oo
-o---o-------o---o-oooo-----o-------------------o----oo-----------------o--o--------o--o------o--o--
-------o---o------oooooo--o----ooo--o--------o-------o----------------------------oo-oo-o--o--------
o--oo------o-----oo--o-oo------------oo--o------o--o-------------oo----o------------oooo-o------oo--
-----o----------ooooooooo--------------oo--------------oo-----o-----o-o--o------o----------o----o---
~~~~
