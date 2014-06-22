<?php
    /*
     * Global variables used to access the teamroster database.
     */
    $hostname = 'teamroster.db.9504599.hostedresource.com';
    $dbusername = 'teamroster';
    $dbpassword = 'j2i@GLc4';
    $dbname = 'teamroster';
    $table = 'people';
    
    
    /*
     * Returns "class=\"selected\"" if the two arguments are equal, or the
     * empty string if they are not.
     */
    function returnSelectState($entry, $selected) {
        if ($entry == $selected) {
            return "class=\"selected\"";
        } else {
            return "";
        }
    }
    
    
    /*
     * Prints the navigational menu.  Used on every page of the website.
     */
    function printMenu($highlight) {
        echo "<div id=\"navigation\">
                  <a href=\"index.php\" "         . returnSelectState(1, $highlight) . ">Users
                  </a><a href=\"games.php\" "     . returnSelectState(2, $highlight) . ">Games
                  </a><a href=\"resources.php\" " . returnSelectState(3, $highlight) . ">Resources
                  </a><a href=\"proscene.php\" "  . returnSelectState(4, $highlight) . ">Pro Scene
                  </a><a href=\"media.php\" "     . returnSelectState(5, $highlight) . ">Media
                  </a><a href=\"technical.php\" " . returnSelectState(6, $highlight) . ">Technical Info
                  </a><a href=\"forums.php\" "    . returnSelectState(7, $highlight) . ">Forums
                  </a><a href=\"links.php\" "     . returnSelectState(8, $highlight) . ">Links</a>
              </div>";
    }
    
    
    /*
     * Returns a nicely-formatted string that represents the time elapsed since
     * a given user has last logged of Steam.
     */
    function returnPrettyLastSeen($lastLogOff) {
        $elapsed = time() - $lastLogOff;
        
        $days = floor($elapsed / 86400);
        $hours = floor(($elapsed / 3600) % 24);
        $minutes = floor(($elapsed / 60) % 60);
        
        if ($days < 10)
            $days = "00" . $days;
        else if (($days < 100) and ($days > 10))
            $days = "0" . $days;
        if ($hours < 10)
            $hours = "0" . $hours;
        if ($minutes < 10)
            $minutes = "0" . $minutes;
        
        return "$days" . ",  " . "$hours" . ":" . "$minutes" . "";
    }
    
    
    /*
     * Returns "sorted-ASC" or "sorted-DESC" if the two
     * arguments are equal, or the empty string if they are not.
     */
    function returnSortState($entry, $selected, $direction) {
        if ($entry == $selected) {
            return "sorted-$direction";
        } else {
            return "";
        }
    }
    
    
    function returnButtonSortDirection($entry, $selected, $direction) {
        if ($entry == $selected) {
            if (strcasecmp($direction, "ASC") == 0)
                return "desc";
            else if (strcasecmp($direction, "DESC") == 0)
                return "asc";
        } else {
            return "asc";
        }
    }
    
    
    /*
     * Prints the table of users on the front page of the website by retrieving
     * data from the teamroster database.
     */
    function printUserTable($sortField, $direction) {
        //Declare that we're using these global variables
        global $hostname, $dbusername, $dbpassword, $dbname, $table;
        
        //URL bases
        $facebookbase = "https://www.facebook.com/";
        $steambase    = "http://steamcommunity.com/profiles/";
        $dotabuffbase = "https://dotabuff.com/players/";
        
        //Make connection to database
        mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
        mysql_select_db($dbname) or die(mysql_error());
        
        //Get all records from `people` table and store in $result
        $query = "SELECT * FROM people ORDER BY $sortField $direction"; 
        $result = mysql_query($query) or die(mysql_error());
        
        echo    "<div class=\"table\">
                    <div class=\"row-header\">
                        <a href=\"facebook-" . returnButtonSortDirection("`Full Name`", $sortField, $direction) . ".php\">
                            <div class=\"cell-header column-facebook " . returnSortState("`Full Name`", $sortField, $direction)  . "\">Facebook</div>
                        </a>
                        <a href=\"steam-" . returnButtonSortDirection("`Steam Name`", $sortField, $direction) . ".php\">
                            <div class=\"cell-header column-steam "    . returnSortState("`Steam Name`", $sortField, $direction) . "\">Steam</div>
                        </a>
                            <div class=\"cell-header column-dotabuff\">Dotabuff</div>
                        <a href=\"lastseen-" . returnButtonSortDirection("`Logoff`", $sortField, $direction) . ".php\">
                            <div class=\"cell-header column-lastseen " . returnSortState("`Logoff`", $sortField, $direction)     . "\">Last Seen</div>
                        </a>
                    </div>";
        
        //Loop over all results in $result and generate HTML
        while($row = mysql_fetch_array($result)){
            $fullName = $row['Full Name'];
            $facebookID = $row['Facebook ID'];
            $steamName = $row['Steam Name'];
            $steamID = $row['Steam ID'];
            $dotabuffID = $row['Dotabuff ID'];
            $prettyTime = returnPrettyLastSeen($row['Logoff']);
            
            echo    "<div class=\"row-content\">
                        <a href=\"$facebookbase$facebookID\">
                            <div class=\"cell-content clickable column-facebook\">$fullName</div>
                        </a>
                        
                        <a href=\"$steambase$steamID\">
                            <div class=\"cell-content clickable column-steam\">$steamName</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$dotabuffID\">
                            <div class=\"cell-content clickable column-dotabuff\">Stats</div>
                        </a>
                        
                        <div class=\"cell-content column-lastseen\">$prettyTime</div>
                    </div>
                    
                    ";
        }
        echo    "</div>";
    }
    
    /*
     * Print the whole front page using the specified sorting column and direction
     */
    function printFrontPage($sortField, $direction) {
        echo    "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"
                    \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">
                    
                <html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\">
                    <head>
                        <title>Rift Valley Academy Gaming</title>
                        <link rel=\"stylesheet\" type=\"text/css\" href=\"unnaturalpottery.css\" />
                        <link rel=\"stylesheet\" type=\"text/css\" href=\"mobile-unnaturalpottery.css\" media=\"(max-width: 800px)\" />
                        <link rel=\"icon\" type=\"image/png\" href=\"http://www.unnaturalpottery.com/images/favicon.ico\" />
                        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
                        <style type=\"text/css\"></style>
                        <script src=\"jquery-1.10.1.min.js\"></script>
                        <?php include 'functions.php'; ?>
                    </head>
                    
                    <body>
                        <div id=\"header\">
                            <h1><a href=\"http://www.unnaturalpottery.com/\">Rift Valley Academy Gaming</a></h1>
                        </div>
                    
                        <div id=\"body\">";
            
                        printMenu(1);
                        
                        echo "<div id=\"content\">";  
                                printUserTable($sortField, $direction);
        
                        echo "</div>
                        
                        </div>
                        
                        <div id=\"footer\">
                            <p> </p>
                        </div>
                    </body>
                </html>";
    }
?>