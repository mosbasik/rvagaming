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
        $facebookbase       = "https://www.facebook.com/";
        $steambase          = "http://steamcommunity.com/profiles/";
        $dotabuffplayerbase = "https://dotabuff.com/players/";
        $dotabuffmatchbase  = "http://dotabuff.com/matches/";
        
        //Make connection to database
        mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
        mysql_select_db($dbname) or die(mysql_error());
        
        //Get all records from `people` table and store in $result
        //$query = "SELECT * FROM people ORDER BY $sortField $direction";
        $query = "SELECT
                      justpeople.personkey,
                      justpeople.fullname,
                      facebook.facebookid,
                      steamdotabuff.steamname,
                      steamdotabuff.steamid,
                      steamdotabuff.dotabuffid,
                      steamdotabuff.ismain,
                      s1.matchforeignkey
                      
                  FROM
                      peoplematchesheroes s1
                      
                  INNER JOIN justpeople
                  ON justpeople.personkey = s1.personforeignkey
                  
                  INNER JOIN facebook
                  ON justpeople.personkey = facebook.personforeignkey
                  
                  INNER JOIN steamdotabuff
                  ON justpeople.personkey = steamdotabuff.personforeignkey
                  
                  WHERE
                      s1.matchforeignkey = (SELECT
                                                MAX(s2.matchforeignkey)
                                            FROM
                                                peoplematchesheroes s2
                                            WHERE
                                                s1.personforeignkey = s2.personforeignkey
                                            AND
                                                steamdotabuff.ismain = 1)
                  GROUP BY
                      justpeople.personkey
                  ORDER BY
                      $sortField $direction";

        $result = mysql_query($query) or die(mysql_error());
        
        echo    "<div class=\"table\">
                    <div class=\"row\">
                        <a href=\"index.php?sort=fullname&direction=" . returnButtonSortDirection("fullname", $sortField, $direction) . "\">
                            <div class=\"header column-facebook " . returnSortState("fullname", $sortField, $direction)  . "\">Facebook</div>
                        </a>
                        
                        <a href=\"index.php?sort=steamname&direction=" . returnButtonSortDirection("steamname", $sortField, $direction) . "\">
                            <div class=\"header column-steam "    . returnSortState("steamname", $sortField, $direction) . "\">Steam</div>
                        </a>
                        
                        <div class=\"header column-dotabuff\">Dotabuff</div>
                            
                        <a href=\"index.php?sort=matchforeignkey&direction=" . returnButtonSortDirection("matchforeignkey", $sortField, $direction) . "\">
                            <div class=\"header column-lastseen " . returnSortState("matchforeignkey", $sortField, $direction)     . "\">Last Played</div>
                        </a>
                    </div>";
        
        //Loop over all results in $result and generate HTML
        while($row = mysql_fetch_array($result)){
            $personkey  = $row['personkey'];
            $fullname   = $row['fullname'];
            $facebookid = $row['facebookid'];
            $steamname  = $row['steamname'];
            $steamid    = $row['steamid'];
            $dotabuffid = $row['dotabuffid'];
            $match      = $row['matchforeignkey'];

            //Using id of last played match, get its date and outcome
            $query = "SELECT date, outcome
                      FROM matches
                      WHERE id = $match";
            $subresult = mysql_query($query) or die(mysql_error());
            $row = mysql_fetch_array($subresult);
            $date = $row['date'];
            $outcome = $row['outcome'];
            
            echo    "<div class=\"row\">
                        <a href=\"$facebookbase$facebookid\">
                            <div class=\"cell highlightable column-facebook\">$fullname</div>
                        </a>
                        
                        <a href=\"$steambase$steamid\">
                            <div class=\"cell highlightable column-steam\">$steamname</div>
                        </a>
                        
                        <a href=\"$dotabuffplayerbase$dotabuffid\">
                            <div class=\"cell highlightable column-dotabuff\">Stats</div>
                        </a>
                        
                        <a href=\"$dotabuffmatchbase$match\">
                            <abbr class=\"cell highlightable $outcome timeago column-lastseen\" title=\"$date\">$date</abbr>
                        </a>
                    </div>";
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
        
        echo    "<div class=\"table\">";
                    
                    //<div id=\"matchmeta\">
                    //    <div>
                    //        Winrate: ";
                    //        printGlobalWinrate();
                    //   "</div>
                    //</div>
                    
        echo       "<div class=\"row\">
                        <a href=\"matches.php?sort=`id`&direction=" . returnButtonSortDirection("`id`", $sortField, $direction) . "\">
                            <div class=\"header column-id " . returnSortState("`id`", $sortField, $direction) . "\">Match ID</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`numbermembers`&direction=" . returnButtonSortDirection("`numbermembers`", $sortField, $direction) . "\">
                            <div class=\"header column-numbermembers " . returnSortState("`numbermembers`", $sortField, $direction) . "\">Members</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`duration`&direction=" . returnButtonSortDirection("`duration`", $sortField, $direction) . "\">
                            <div class=\"header column-duration " . returnSortState("`duration`", $sortField, $direction) . "\">Duration</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`mode`&direction=" . returnButtonSortDirection("`mode`", $sortField, $direction) . "\">
                            <div class=\"header column-mode " . returnSortState("`mode`", $sortField, $direction) . "\">Game Mode</div>
                        </a>
                        
                        <a href=\"matches.php?sort=`date`&direction=" . returnButtonSortDirection("`date`", $sortField, $direction) . "\">
                            <div class=\"header column-date " . returnSortState("`date`", $sortField, $direction) . "\">Date</div>
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
            
            echo    "<div class=\"row\">
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell column-id\">$id</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell content column-numbermembers\">";
                            printAvatars($id);
            echo        "   </div>
                        </a>";
                        
                        //<a href=\"$dotabuffbase$id\">
                        //    <div class=\"cell $outcome column-outcome\">$outcome</div>
                        //</a>
                        
            echo        "<a href=\"$dotabuffbase$id\">
                            <div class=\"cell column-duration\">$duration</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <div class=\"cell column-mode\">$mode</div>
                        </a>
                        
                        <a href=\"$dotabuffbase$id\">
                            <abbr class=\"cell $outcome timeago column-date\" title=\"$date\">$date</abbr>
                        </a>
                    </div>";
        }
        echo    "</div>";
    }
    
    
    /*
     * Takes a Match ID and prints the Steam avatars of every member in that game
     */
    function printAvatars($matchID) {
        //Declare that we're using these global variables
        global $hostname, $dbusername, $dbpassword, $dbname, $table;
        
        //Make connection to database
        mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
        mysql_select_db($dbname) or die(mysql_error());
        
        //Get all Steam IDs and Full Names that correspond to this Match ID
        $query = "SELECT
                      steamdotabuff.steamid,
                      justpeople.fullname
                      
                  FROM
                      peoplematchesheroes
                      
                  INNER JOIN steamdotabuff
                  ON peoplematchesheroes.personforeignkey = steamdotabuff.personforeignkey
                  
                  INNER JOIN justpeople
                  ON peoplematchesheroes.personforeignkey = justpeople.personkey
                  
                  WHERE
                      matchforeignkey = $matchID
                      
                  AND
                      steamdotabuff.ismain = 1";
        $result = mysql_query($query) or die(mysql_error());
        
        while($record = mysql_fetch_array($result)) {
            $steamid  = $record['steamid'];
            $fullname = $record['fullname'];
            
            echo "<img src=\"/images/steam/$steamid.jpg\" alt=\"$fullname\" title=\"$fullname\">";
        }
    }
    
    
    /*
     * Prints the global winrate (all matches by all members)
     */
    function printGlobalWinrate() {
        //Declare that we're using these global variables
        global $hostname, $dbusername, $dbpassword, $dbname, $table;
        
        //Make connection to database
        mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
        mysql_select_db($dbname) or die(mysql_error());
        
        //Get the winrate stats from the predefined view
        $query = "SELECT * FROM `match_winrate`";
        $result = mysql_query($query) or die(mysql_error());
        
        while($record = mysql_fetch_array($result)) {
            $winrate  = $record['rate'];
            
            echo "$winrate%";
        }
    }
?>