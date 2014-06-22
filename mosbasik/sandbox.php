
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Example</title>
    </head>
    
    <body><pre>
        <?php
            $lancefb = "lance.nordmeyer";
            
            $fbdata = json_decode(file_get_contents("https://graph.facebook.com/$lancefb"), true);    
            print_r($fbdata);
            echo $fbdata[first_name] . " " . $fbdata[last_name];

            echo "<hr />";
        ?>
        
        <p></p>
        
        <?php
            $lancesteam = "76561198035749996";
            
            $steamdata = json_decode(file_get_contents("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0001/?key=057B73388D02E4CC02F55D9B2EE04CD9&steamids=$lancesteam&format=JSON"), true);
            print_r($steamdata);
            echo $steamdata[response][players][player][0][personaname] . "<br />";
            
            $logoff = $steamdata[response][players][player][0][lastlogoff];
            $currenttime = time();
            $elapsed = ($currenttime - $logoff);
            
            echo "logoff " . $logoff . "<br />";
            echo "currenttime " . $currenttime . "<br />";
            echo "elapsed " . $elapsed . "<br />";
            
            $days = floor($elapsed / 86400);
            $hours = floor(($elapsed / 3600) % 24);
            $minutes = floor(($elapsed / 60) % 60);
            $seconds = floor($elapsed % 60);
            
            echo "$days d, $hours hr, $minutes min";
            echo "<hr />";
        ?>
        
        <p></p>
        
        <?php
            $profile_info = json_decode($data, true);
            print_r($profile_info);
            
            echo "<hr />";
        ?>

        <p></p>
        
        <?php
            echo $profile_info[response][players][player][0][personaname];
            
            echo "<hr />";
        ?>
    </pre></body>
</html>

<!-- 057B73388D02E4CC02F55D9B2EE04CD9 -->