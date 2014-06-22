<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    
    <head>
        <title>Create New User</title>
    </head>
    
    <body>
        <?php
            if ($_POST['formSubmit'] == "Submit") {
            
                $errormessage = "";
                if (empty($_POST['facebookID'])) {
                    $errormessage .= "<li>You didn't enter a Facebook ID number.</li>";
                }
                if (empty($_POST['steamID'])) {
                    $errormessage .= "<li>You didn't enter a Steam ID number.</li>";
                }
                if (empty($_POST['dotabuffID'])) {
                    $errormessage .= "<li>You didn't enter a Dotabuff ID number.</li>";
                }
                
                $facebookID = $_POST['facebookID'];
                $steamID = $_POST['steamID'];
                $dotabuffID = $_POST['dotabuffID'];
                
                if (!empty($errormessage)) {
                    echo("<p>There was an error with your form:</p>\n");
                    echo("<ul>" . $errormessage . "</ul>\n");
                    echo("<p>Please revisit the page and re-enter the information (do not simply use the Refresh button or hit F5).</p>");
                    die("");
                }
                
                $hostname = 'teamroster.db.9504599.hostedresource.com';
                $dbusername = 'teamroster';
                $dbpassword = 'W4termelon';
                $dbname = 'teamroster';
                $table = 'people';
                
                mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
                mysql_select_db($dbname) or die(mysql_error());
                
                $facebookdata = json_decode(file_get_contents("https://graph.facebook.com/$facebookID"), true);
                $steamdata = json_decode(file_get_contents("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=057B73388D02E4CC02F55D9B2EE04CD9&steamids=$steamID&format=JSON"), true);
                
                $facebookname = $facebookdata[first_name] . " " . $facebookdata[last_name];
                $steamname = $steamdata[response][players][player][0][personaname];
                
                mysql_query(
                    "INSERT INTO people (
                        `Full Name`,
                        `Facebook ID`,
                        `Steam ID`,
                        `Steam Name`,
                        `Dotabuff ID`
                    ) VALUES (
                        '$facebookname',
                        '$facebookID',
                        '$steamID',
                        '$steamname',
                        '$dotabuffID'
                    )"
                ) or die(mysql_error());
                
                echo "$facebookname inserted!";
            }
        ?>
        
        <form method="post" action="newuserform.php">

            Facebook ID:
            <input type="text" name="facebookID"><br />
            Steam ID:
            <input type="text" name="steamID"><br />
            Dotabuff ID:
            <input type="text" name="dotabuffID"><br />
            <!-- Submission Button -->
            <input type="submit" name="formSubmit" value="Submit"><br />
        </form><br />
        
    </body>
    
</html>

<?php // Steam API key 057B73388D02E4CC02F55D9B2EE04CD9 ?>