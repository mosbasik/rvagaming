<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
                    
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
            <h1><a href="http://www.unnaturalpottery.com/">Rift Valley Institute Gaming</a></h1>
        </div>
        
        <!-- <p style="text-align:center;">Matches not updating as of <abbr class="timeago" title="2013-10-30T04:34:10Z">2013-10-30T04:34:10Z</abbr> due to changes on Dotabuff's end.  Site rebuild is in progress to avoid this in the future, but it could take anywhere from a couple of days to weeks.</p>  -->
    
        <div id="body">
        
            <div id="firstline"></div>

            <?php printMenu(1); ?>
            
            <div id="content">
                
                <?php
                    // if the sorting field is empty use `Logoff` by default
                    if(empty($_GET['sort'])) {
                        $sort = "matchforeignkey";
                    }
                    else {
                        $sort = $_GET['sort'];
                    }
                    
                    // if the direction field is empty use DESC by default
                    if(empty($_GET['direction'])) {
                        $direction = "DESC";
                    }
                    else {
                        $direction = $_GET['direction'];
                    }
                    
                    // print the table of users as defined in functions.php
                    printUserTable($sort, $direction);
                ?>
                
            </div>
        
        </div>
        
        <div id=\"footer\">
            <p> </p>
        </div>
    </body>
</html>



