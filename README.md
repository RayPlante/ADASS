ADASS 2012 proceedings, which took place in Urbana, Nov 5-9, 2012.
Editors Friedel & Plante.

ASCL contributions by Allen & Teuben.


Here's a super simple "git for dummies"

1) this will get you a new clean copy:

   git clone https://github.com/astro-friedel/ADASS.git

   and it will create a new subdirectory called 'ADASS'. If 
   you already had one, git will nicely complain.

2) this will get you the latest updates from the others:


   cd ADASS
   git pull

3) make a change and give it back to the others.   Pick your favorite editor,
   and the -m flag is for those who don't want/need the editor at that stage.

   cd ADASS
   edit README.md
   git add README.md
   git commit README.md
	better is :   git commit -m "reasons of changes to file"  README.md
   git push


4.) if you have made changes to a file that has been changed upstream, a pull will fail. You will have to stash the file (git help stash) before you can pull the updated version down. 

If you have stashed a file that you no longer want, you apparently have to delete it before you can push the file you are currently working on. 

5.) I have deleted a file, did a pull, and did not get the file; in this case, the file was README.md. Peter suggested I type:

   git checkout -- README.md 
   
I then pulled again and got the file. 

6.) use alias git=/usr/local/git/bin/git to 

7.) use :q! to get out of the editor when dumped into it


   