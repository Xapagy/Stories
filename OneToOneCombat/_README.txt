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