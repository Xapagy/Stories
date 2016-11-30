What is this
============

This is a collection of experiments for the multi-level summarizations developed in November 2016. It is different from the ones in the OneToOneCombat because it has verb on multiple levels. 

As I am not quite sure how this is going to work, I will not initially modify Xapi, so this code contains a lot of Javascript.

Levels:

0 - attack, parry, cut, step-forward, step-back, push, concede, win, shake-hands, die, run, cry-in-pain, yell-in-triumph
1 - engagement (starts with step forward, ends with step-back, disengage), winning-engagement, 
2 - duel, wins_duel, kills_in_duel (ends with death, victory, or shake-hands) 

Relations:
X are-close Y
X tired
X bleeding

Typical way to run this:
========================

Creating a starting agent loaded with the story domain
-------------------------------------------------------

xapagy D-OneToOneCombat.xapi P-FocusOnly.xapi --output-agent D-OneToOneCombat.xa

Note, that although this will pull in the Core domain definitions and whatever else D-OneToOneCombat.xapi pulls in, it will have no previous autobiography for these domains.

So ultimately, the correct way to run this will be to start from a warmed-up core agent

xapagy --input-agent DW-Core.xa D-OneToOneCombat.xapi P-FocusOnly.xapi --output-agent D-OneToOneCombat.xa

Running domain warmups
----------------------

xapagy --input-agent D-OneToOneCombat.xa warmup.xapi --output-agent DW-OneToOneCombat.xa


Running the story
-----------------

xapagy --input-agent D-OneToOneCombat.xa Achilles_vs_Hector.xapi -o temp.xa

Checking the output

xapagy -o temp.xa

Running experiments on the output

xapagy -i temp.xa Experiments.xapi
