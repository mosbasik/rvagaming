﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
                    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Rift Valley Academy Gaming</title>
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
        
        <!-- <p style="text-align:center;">Matches not updating as of <abbr class="timeago" title="2013-10-30T04:34:10Z">2013-10-30T04:34:10Z</abbr> due to changes on Dotabuff's end.  Site rebuild is in progress to avoid this in the future, but it could take anywhere from a couple of days to weeks.</p>  -->
    
        <div id="body">
        
            <div id="firstline"></div>

            <?php printMenu(9); ?>
            
            <div id="content">
                
                <!-- <?php
                    
                    // define variables and set to empty values
                    $username = $email = $password = "";
                    
                    if ($_SERVER["REQUEST METHOD"] == "POST") {
                        $username = test_input($_POST["username"]);
                        $email    = test_input($_POST["email"]);
                        $password = test_input($_POST["password"]);
                    }
                    echo $username;
                    echo $email;
                    echo $password;
                    
                ?> -->
                
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                    username:   <input type="text"     name="username"><br>
                    email:      <input type="text"     name="email"><br>
                    password:   <input type="password" name="password"><br>
                    <input type="submit">
                </form>
                
                Welcome <?php echo $_POST["username"]; ?><br>
                Your email address is: <?php echo $_POST["email"]; ?><br>
                Your password is <?php echo $_POST["password"]; ?>
                
            </div>
        
        </div>
        
        <div id=\"footer\">
            <p> </p>
        </div>
    </body>
</html>



