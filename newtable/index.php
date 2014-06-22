<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <title>Rift Valley Academy Gaming</title>
        <link rel="stylesheet" type="text/css" href="unnaturalpottery.css" />
        <link rel="stylesheet" type="text/css" href="mobile-unnaturalpottery.css" media="(max-width: 800px)" />
        <link rel="icon" type="image/png" href="http://www.unnaturalpottery.com/images/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css"></style>
        <script src="jquery-1.10.1.min.js"></script>
        <?php include 'functions.php'; ?>
    </head>
    
    <body>
        <div id="header">
            <h1><a href="http://www.unnaturalpottery.com/">Rift Valley Academy Gaming</a></h1>
        </div>
    
        <div id="body">
            <?php printMenu(1); ?>
            
            <div id="content">
                <?php
                    printUserTable("`Full Name`", "ASC");
                ?>
            </div>
        </div>
        
        <div id="footer">
            <p> </p>
        </div>
    </body>
</html>