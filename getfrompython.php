<?php
$myfile = fopen("pythonoutput.csv", "w+") or die("Unable to open file!");
echo fgets($myfile);
fclose($myfile);
?>