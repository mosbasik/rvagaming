//business = new Object();
//business.openTimes  = ["08:00", "13:00"];
//business.closeTimes = ["12:00", "20:00"];

var daysOfTheWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];


/*
 * Takes an offset from UTC time in HOURS and returns a date object
 * corresponding to the current date in the indicated time zone.
 */
function getOffsetTime(targetHoursOffset) {
    //get local date, convert to milli-unix, get offset
    var localDate = new Date();
    var localTime = localDate.getTime();
    var localOffset = localDate.getTimezoneOffset() * 60000;
    
    //get UTC milliunix
    var UTCTime = localTime + localOffset;
    
    //calculate offset of target, get milliunix, convert to date object
    var targetOffset = targetHoursOffset * 3600000;
    var targetTime = UTCTime + targetOffset;
    var targetDate = new Date(targetTime);
    
    //return result
    return targetDate;
}


/*
 * Takes a day of the week as a 3-character string & hours and minutes as
 * integers, and returns the time since the beginning of the week (early morning
 * Sunday) in milliseconds.
 */
function weekTimeToMilliseconds(d, h, m) {
    //convert string day to number 0-6
    //day = daysOfTheWeek.indexOf(d);
    var day = jQuery.inArray(d, daysOfTheWeek);
    
    //check that all input is valid
    if (day == -1) throw "Invalid day.";
    if ((h > 23) || (h < 0)) throw "Invalid hour.";
    if ((m > 59) || (m < 0)) throw "Invalid minute.";
    
    //compile and return the result
    var result = 0;
    result += day * 86400000;
    result += h * 3600000;
    result += m * 60000;
    return result;
}


/*
 * Prints and runs a clock using the specified timezone in any container with a
 * "#clock" id.
 */
function startTime(timezone) {
    var today = getOffsetTime(timezone);
    var d = today.getDay();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    
    //add zero in front of numbers less than 10
    m = checkTime(m);
    s = checkTime(s);
    
    //print the clock and start it running
    $("#clock").html("Current (UTC " + timezone + ") time: " + daysOfTheWeek[d] + ", " + h + ":" + m + ":" + s);
    setTimeout(function() {startTime(timezone)}, 500);
}


/*
 * Counts down to a specified time of day.  Takes input in the form of a three-
 * char day string and integer hours and minutes ("Sat", 6, 45)
 */
function countDown(stop_d, stop_h, stop_m) {
    var stopMilli = weekTimeToMilliseconds(stop_d,
                                           stop_h,
                                           stop_m);
    var nowObject = new Date();
    var nowMilli = weekTimeToMilliseconds(nowObject.getDay(),
                                          nowObject.getHours(),
                                          nowObject.getMinutes());
    
    var leftMilli = stopMilli - nowMilli;
    var leftObject = new Date(leftMilli);
    
    var left_d = leftObject.getDay();
    var left_h = leftObject.getHours();
    var left_m = leftObject.getMinutes();
    var left_s = leftObject.getSeconds();
    
    //print the clock and start it running
    $("#countdown").html("hello");
    /*$("#countdown").html("Countdown to " + stop_d + ", " + stop_h + ":" + stop_m
        + " ---- " + left_d + ", "left_h + ":" + left_m + ":" + left_s);
    /*setTimeout(function() {countDown(day, hour, min)}, 500); */
}


/*
 * Checks to make sure that the passed argument always has at least two digits,
 * and prepends a "0" if it has less.
 */
function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}

$(document).ready(function() {
    startTime(-5);
    countDown("Wed", 9, 30);
    $("#test").html(weekTimeToMilliseconds("Wed", 9, 30));
});