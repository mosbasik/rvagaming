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
                  </a><a href=\"matches.php\" "   . returnSelectState(2, $highlight) . ">Matches
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
     * a given user has last logged off Steam.
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
     * Takes $entry and $selected as arguments, as well as the sort indicator
     * $direction
     * 
     * If the $enty and $selected are equal, returns either "sorted-ASC" or
     * "sorted-DESC" in accordance with the contents of $direction.  If they are
     * NOT equal, returns the empty string ""
     */
    function returnSortState($entry, $selected, $direction) {
        if ($entry == $selected) {
            return "sorted-$direction";
        } else {
            return "";
        }
    }
    
    
    /*
     * Takes $entry and $selected as arguments, as well as the sort indicator
     * $direction
     * 
     * If the $enty and $selected are equal, returns either "ASC" or
     * "DESC" in accordance with the OPPOSITE of the contents of $direction.  If
     * they are NOT equal, returns "ASC" by default.
     */
    function returnButtonSortDirection($entry, $selected, $direction) {
        if ($entry == $selected) {
            if (strcasecmp($direction, "ASC") == 0)
                return "DESC";
            else if (strcasecmp($direction, "DESC") == 0)
                return "ASC";
        } else {
            return "ASC";
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
                    <div class=\"row column-header\">
                        <a href=\"index.php?sort=`Full+Name`&direction=" . returnButtonSortDirection("`Full Name`", $sortField, $direction) . "\">
                            <div class=\"cell-header column-facebook " . returnSortState("`Full Name`", $sortField, $direction)  . "\">Facebook</div>
                        </a>
                        
                        <a href=\"index.php?sort=`Steam+Name`&direction=" . returnButtonSortDirection("`Steam Name`", $sortField, $direction) . "\">
                            <div class=\"cell-header column-steam "    . returnSortState("`Steam Name`", $sortField, $direction) . "\">Steam</div>
                        </a>
                        
                            <div class=\"cell-header column-dotabuff\">Dotabuff</div>
                            
                        <a href=\"index.php?sort=`Logoff`&direction=" . returnButtonSortDirection("`Logoff`", $sortField, $direction) . "\">
                            <div class=\"cell-header column-lastseen " . returnSortState("`Logoff`", $sortField, $direction)     . "\">Last Seen</div>
                        </a>
                    </div>";
        
        //Loop over all results in $result and generate HTML
        while($row = mysql_fetch_array($result)){
            $fullName   = $row['Full Name'];
            $facebookID = $row['Facebook ID'];
            $steamName  = $row['Steam Name'];
            $steamID    = $row['Steam ID'];
            $dotabuffID = $row['Dotabuff ID'];
            $prettyTime = returnPrettyLastSeen($row['Logoff']);
            
            echo    "<div class=\"row\">
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
     * Prints the table of matches played by the group by retrieving data from
     * the teamroster database.
     */
    function printMatchTable($sortField, $direction, $limit=30) {
        //Declare that we're using these global variables
        global $hostname, $dbusername, $dbpassword, $dbname, $table;
        
        //URL bases
        $dotabuffbase = "https://dotabuff.com/matches/";
        
        //Make connection to database
        mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
        mysql_select_db($dbname) or die(mysql_error());
        
        //Get all records from `matches` table and store in $result
        $query = "SELECT `id`,`date`,`duration`,`mode`,`outcome`,`numbermembers`
                  FROM `matches`
                  ORDER BY $sortField $direction
                  LIMIT $limit"; 
        $result = mysql_query($query) or die(mysql_error());
        
        echo    "<div class=\"table\">
                    <div class=\"row\">
                        <a href=\"matches.php?sort=`id`&direction=" . returnButtonSortDirection("`id`", $sortField, $direction) . "\">
                            <div class=\"column-header column-id " . returnSortState("`id`", $sortField, $direction) . "\">Match ID</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`numbermembers`&direction=" . returnButtonSortDirection("`numbermembers`", $sortField, $direction) . "\">
                            <div class=\"column-header column-numbermembers " . returnSortState("`numbermembers`", $sortField, $direction) . "\">Members</div>
                        </a>
                        
                        <div class=\"column-header column-outcome\">Outcome</div>
                        
                        <a href=\"matches.php?sort=`duration`&direction=" . returnButtonSortDirection("`duration`", $sortField, $direction) . "\">
                            <div class=\"column-header column-duration " . returnSortState("`duration`", $sortField, $direction) . "\">Duration</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`mode`&direction=" . returnButtonSortDirection("`mode`", $sortField, $direction) . "\">
                            <div class=\"column-header column-mode " . returnSortState("`mode`", $sortField, $direction) . "\">Game Mode</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`date`&direction=" . returnButtonSortDirection("`date`", $sortField, $direction) . "\">
                            <div class=\"column-header column-date " . returnSortState("`date`", $sortField, $direction) . "\">Date</div>
                        </a>
                    </div>";
        
        //Loop over all results in $result and generate rows for each record
        while($row = mysql_fetch_array($result)){
            $id            = $row['id'];
            $numbermembers = $row['numbermembers'];
            $outcome       = $row['outcome'];
            $duration      = $row['duration'];
            $mode          = $row['mode'];
            $date          = $row['date'];
            
            echo    "<div class=\"row-content\">
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell-content column-id\">$id</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell-content column-numbermembers\">$numbermembers</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell-content $outcome column-outcome\">$outcome</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell-content column-duration\">$duration</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell-content column-mode\">$mode</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <abbr class=\"cell-content timeago column-date\" title=\"$date\">$date</abbr>
                        </a>
                    </div>";
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