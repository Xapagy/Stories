What is this
============

Stories set in the world of paleolithic hunter gatherers. 


Typical way to run this:
========================

Creating a starting agent loaded with the story domain
-------------------------------------------------------

xapagy D-Paleolithic.xapi P-FocusOnly.xapi --output-agent D-Paleolithic.xa

Running domain warmups
----------------------

- fixme: this will really need to be warmed up with a lot of things

Running the story
-----------------

xapagy -i D-Paleolithic.xa PurraFoundAFruitTree-Trip.xapi -o PFAFT-1.xa
xapagy -i PFAFT-1.xa PurraFoundAFruitTree-TellTheStory.xapi -o PFAFT-2.xa