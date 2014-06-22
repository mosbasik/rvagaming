
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Example</title>
    </head>
    
    <body><pre>
        <?php
            //Database login information
            $hostname = 'teamroster.db.9504599.hostedresource.com';
            $dbusername = 'teamroster';
            $dbpassword = 'j2i@GLc4';
            $dbname = 'teamroster';
            $table = 'people';
            
            //Connect to the database
            mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
            mysql_select_db($dbname) or die(mysql_error());
            
            //Get all records from `people` table
            $loopquery = "SELECT * FROM people"; 
            $result = mysql_query($loopquery) or die(mysql_error());
            
            while($row = mysql_fetch_array($result)){
                //Save current row ID information
                $facebookID = $row['Facebook ID'];
                $steamID = $row['Steam ID'];
echo $facebookID . "<br />";
echo $steamID . "<br />";                
                //Retrieve this record's data from websites using the saved IDs
                $facebookdata = json_decode(file_get_contents("https://graph.facebook.com/$facebookID"), true);
                $steamdata = json_decode(file_get_contents("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=057B73388D02E4CC02F55D9B2EE04CD9&steamids=$steamID&format=JSON"), true);
                
                //Save retrieved data as variables for ease of use
                $facebookname = $facebookdata[first_name] . " " . $facebookdata[last_name];
                $steamname = $steamdata[response][players][player][0][personaname];
                $lastlogoff = $steamdata[response][players][player][0][lastlogoff];
                
print_r ($facebookdata . "<br />");
print_r ($steamdata . "<br />");                
                //Update this record's data in the database
                $updatequery = "
                    UPDATE
                        people
                    SET
                        `Full Name`  = '$facebookname',
                        `Steam Name` = '$steamname',
                        `Logoff`     = '$lastlogoff'
                    WHERE
                        `Facebook ID` = '$facebookID'
                    AND
                        `Steam ID` = '$steamID'
                ";
                mysql_query($updatequery);
echo "Update query run for $facebookname (or $steamname).";
echo "<hr />";
flush();
            }
        ?>
    </pre></body>
</html>

<?php // mos_basik Steam API Key: 057B73388D02E4CC02F55D9B2EE04CD9  ?>