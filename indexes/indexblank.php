<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Unnatural Pottery</title>
        <link rel="stylesheet" type="text/css" href="unnaturalPotteryblank.css" />
        <link rel="icon" type="image/png" href="http://www.unnaturalpottery.com/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
    
    <body>
        <div id="main_wrapper">
            <div id="top_pane">
                <h1>Welcome, [SMH]</h1>
            </div>
            
            <div id="content_wrapper">
                <div id="left_pane">
                    <pure_text>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget odio at augue tristique lobortis. Nulla euismod lectus ut turpis lacinia eget eleifend nisi volutpat. Morbi tincidunt, orci non sollicitudin facilisis, massa nisi lobortis elit, eget fermentum ligula risus gravida quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus mattis sapien lacinia orci dapibus et varius justo congue. Praesent tempus odio nec augue tristique vel cursus neque mattis. Fusce consequat porta dolor eu tincidunt. Ut id dolor dui, vitae porta nibh. Sed vehicula dictum mauris, at pulvinar nulla viverra quis. Ut eu tellus quis tellus laoreet imperdiet. Aenean dapibus congue nisl eget dapibus.</pure_text>
                </div>
                
                <div id="right_pane">
                    <table id="information_table">
                        <tr class="table_header">
                            <td><img class="icon" src="http://unnaturalpottery.com/images/facebook.png" alt="Facebook Icon" /></td>
                            <td><img class="icon" src="http://unnaturalpottery.com/images/steam.png" alt="Steam Icon" /></td>
                            <td><img class="icon" src="http://unnaturalpottery.com/images/dota2.png" alt="Dota 2 Icon" /></td>
                        </tr>
                
                        <?php
                            //Database login information
                            $hostname = 'teamroster.db.9504599.hostedresource.com';
                            $dbusername = 'teamroster';
                            $dbpassword = 'W4termelon';
                            $dbname = 'teamroster';
                            $table = 'people';
                            
                            //URL bases
                            $facebookbase = "https://www.facebook.com/";
                            $steambase = "http://steamcommunity.com/profiles/";
                            $dotabuffbase = "https://dotabuff.com/players/";
                            
                            //Make connection to database
                            mysql_connect($hostname, $dbusername, $dbpassword) or die(mysql_error());
                            mysql_select_db($dbname) or die(mysql_error());
                            
                            //Get all records from `people` table
                            $query = "SELECT * FROM people"; 
                            $result = mysql_query($query) or die(mysql_error());
                            
                            while($row = mysql_fetch_array($result)){
                                $facebookID = $row['Facebook ID'];
                                $steamID = $row['Steam ID'];
                                $dotabuffID = $row['Dotabuff ID'];
                                
                                echo "<tr class=\"table_body\">";
                                    echo "<td>" . "<a href=\"$facebookbase$facebookID\">" . $row['Full Name']  . "</a>" . "</td>";
                                    echo "<td>" . "<a href=\"$steambase$steamID\">"       . $row['Steam Name'] . "</a>" . "</td>";
                                    echo "<td>" . "<a href=\"$dotabuffbase$dotabuffID\">" . "Stats"            . "</a>" . "</td>";
                                echo "</tr>";
                            }
                        ?>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>