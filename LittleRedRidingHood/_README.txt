Typical way to run this:
========================

Creating a starting agent loaded with the story domain
-------------------------------------------------------

xapagy D-LRRH.xapi P-FocusOnly.xapi --output-agent D-LRRH.xa

Note, that although this will pull in the Core domain definitions and whatever else LRRH-Domain.xapi pulls in, it will have no previous autobiography for these domains.

So ultimately, the correct way to run this will be to start from a core agent

xapagy --input-agent Core.xa LRRH-Domain.xapi Params-FocusOnly.xapi --output-agent LRRH-Domain.xa

Running domain warmups
----------------------

No background yet.

Running the story
-----------------

First part of the file 

xapagy --input-agent D-LRRH.xa Story.xapi

-will create Point1.xa

-run from Point1.xa

xapagy --reset-readings --input-agent Point1.xa Story.xapi::Point1 

xapagy --reset-readings --input-agent Point2.xa Story.xapi::Point2