<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Rift Valley Academy Gaming - Technical Info</title>
        <link rel="stylesheet" type="text/css" href="unnaturalpottery.css" />
        <link rel="stylesheet" type="text/css" href="mobile-unnaturalpottery.css" media="(max-width: 800px)" />
        <link rel="icon" type="image/png" href="http://www.unnaturalpottery.com/images/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css"></style>
        <script src="jquery-1.10.2.js" type="text/javascript"></script>
        <script src="jquery.timeago.js" type="text/javascript"></script>
        <script src="script.js" type="text/javascript"></script>
        <?php include 'functions.php'; ?>
    </head>
    
    <body>
        <div id="header">
            <h1><a href="http://www.unnaturalpottery.com/">Rift Valley Academy Gaming</a></h1>
        </div>
        
        <!-- <p style="text-align:center;">Currently working on this page; please excuse any heinous errors.</p> -->
    
        <div id="body">
        
            <div id="firstline"></div>
            
            <?php printMenu(6); ?>
            
            <div id="content">
                <div class="text">
                    <h2>Mac & Linux</h2>
                    <p>There are Dota 2 test clients out for them.  However, they were only released <abbr class="timeago" title="2013-07-10T12:00:00-07:00">2013-07-10T12:00:00-07:00</abbr> so they are not yet completely stable.  You can get them now and test settings yourself if you like playing with computers.  <a href="https://www.facebook.com/cpoenaru">Chris Poenaru</a> and <a href="https://www.facebook.com/peter.henry7">Peter Henry</a> are the ones to talk to if you want to try this.</p>
                    
                    <h2>Launch Parameters</h2>
                    <p>Dota 2 can be modified with launch parameters.  To do this, right-click on the game in the Steam client, then go to Properties > General Tab > Set Launch Options.  In the box, type any of the command as shown, separating them with spaces and including the dashes (order doesn’t matter).  Some of these are:</p>
                    <ul>
                        <li><strong><tt>-nod3d9ex</tt></strong></br> Disables Direct 3D DirectX 9 Extended Rendering; try this if you get a black screen on startup.</li>
                        
                        <li><strong><tt>-windowed</tt></strong></br> Windowed mode instead of fullscreen makes ALT-TAB a lot faster.</li>
                        
                        <li><strong><tt>-noborder</tt></strong></br> If you are running windowed, this removes the border around the window.</li>
                        
                        <li><strong><tt>-w 1920 -h 1080</tt></strong></br> These parameters set the exact resolution of the game window.  In this example they are my screen’s native resolution, 1920x1080p.</li>
                        
                        <li><strong><tt>-high</tt></strong></br> Sets the priority of the Dota 2 process on your computer to High.</li>
                        
                        <li><strong><tt>-dxlevel 8</tt></strong></br> Forces the game to run in DirectX 8, or whatever version you choose.</li>
                        
                        <li><strong><tt>-novid</tt></strong></br> Disables the Valve intro video.</li>
                        
                        <li><strong><tt>-international2012</tt></strong></br> Changes the splash-screen to a painted Dota 2 logo in front of blue swirls.</li
                        
                        <li><strong><tt>-international</tt></strong></br> Changes the splash-screen to the Aegis of Champions in front of green swirls.</li>
                        
                        <li><strong><tt>-console</tt></strong></br> Automatically starts the console up when you launch the game - there are many console commands that can be run here.</li>
                        
                        <li><strong><tt>-autoexec.cfg</tt></strong></br> Runs all the console commands in your autoexec.cfg file when you launch the game - more on this below.</li>
                    </ul>
                    
                    <h2>The autoexec.cfg</h2>
                    <p>You can place a file in your Steam installation such that all the commands in it are run at the launch of Dota 2.  These are different from the Launch Parameters above; the commands in this file are actual in-game console commands that are simply all run at once, automatically.</p>
                    <ol>
                        <li>Go to wherever you installed Steam, and navigate to this subfolder: <tt>"Steam\steamapps\common\dota 2 beta\dota\cfg"</tt>.  (If you have only ever used Dota 2 from one Steam account on this computer, go to the folder with your username on it instead of <tt>"common"</tt>.)</li>
                        
                        <li>Create a new .txt file in this folder and rename it <tt>autoexec.cfg</tt>.  If your computer hides file extensions by default, make sure that you haven’t accidentally named it <tt>autoexec.cfg.txt</tt>, because that won’t work.</li>
                        
                        <li>Populate the file with whatever commands you like.</br>
                        <a href="http://dota2.gamepedia.com/Console_Command_List">List of Dota 2 console commands</a></br>
                        <a href="https://gist.github.com/mosbasik/6032550">Example: my current <tt>autoexec.cfg</tt></a></li>
                    </ol>
                    
                    <p>Further information about Launch Parameters and Autoexec commands can be found online.</p>
                    
                    <!-- <a href=""></a> -->
                    <!-- <li><a href=""></a></br></li> -->
                </div>
            </div>
        </div>
        
        <div id="footer">
            <p> </p>
        </div>
        
    </body>
</html>