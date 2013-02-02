ADASS 2012 proceedings, which took place in Urbana, Nov 5-9, 2012.
Editors Friedel & Plante.

ASCL contributions by Allen & Teuben.


Here's a super simple "git for dummies"

1) this will get you a new clean copy:

   git clone https://github.com/astro-friedel/ADASS.git

   and it will create a new subdirectory called 'ADASS'. If 
   you alreadyu had one, git will nicely complain.

2) this will get you the latest updates from the others:


   cd ADASS
   git pull

3) make a change and give it back to the others

   cd ADASS
   edit README.md
   git add README.md
   git commit README.md
   git push

