mpcintent setup
---------------

mpcintent consists of three files:
* the userscript (ends in .user.js)
* the handler (ends in .bat)
* the registration (ends in .reg)


The userscript is fine as is and can be installed in firefox (and I believe chrome, not tested) to be installed via greasmonkey. The two other files need modification to work on your particular set-up, as it's guaranteed to be different from mine.


First of all, put the .bat file in a place where you're comfortable having it, where it won't be in your way, but it can still be accessed. Something like C:\Windows is good enough but if you have a special folder for files like these (like I do), by all means, put it there. Once you put it there it MUST remain there. You can change the contents later to let it work for your setup, but you mustn't fuck with the location unless you want to re-register it.

Now, right-click on the .bat file and select "edit". This'll open it in notepad. On the fourth line it says

  start /d "C:\Program Files (x86)\CMP\MPC-HC\" mpc-hc.exe "%lnk%"
You'll have to edit this to properly reflect your own mpc-hc directory. Note that the location and the executable name are split, so the syntax is:

  start /d "[location of mpc]" mpc-hc.exe "%lnk%"


Open up the .reg file. You'll see these lines:

  [HKEY_CLASSES_ROOT\mpc\shell\open\command]
  @="\"D:\\WorkDirs\\Resources\\Apps\\mpcintent\\mpcintent.bat\" \"%1\""

These are the lines referencing to to the location of the .bat file. Change it to where you put your file. Note that you have to use double backslashes (\\) in the path instead of single. This is important. So C:\Windows\mpcintent.bat becomes

  @="\"C:\\Windows\\mpcintent.bat\" \"%1""

Save the .reg, double-click it, accept the dialog box that pops up. From this point you'll have to repeat this every time you move the .bat file, so leave it alone.

It should now work. Open firefox, go to a youtube page and try it out. You can now remove the .reg and .user.js file, as their contents are installed. Leave the .bat alone, though.
