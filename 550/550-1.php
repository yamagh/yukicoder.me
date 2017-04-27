<?php
$n=fgets(STDIN);
$a=explode(' ', rtrim(fgets(STDIN)));
$b=explode(' ', rtrim(fgets(STDIN)));

$r=array_fill(0, max($b)+1, 0);
for($i=0; $i<$n; $i++){
  $r[$b[$i]]+=$a[$i];
}

echo max($r) == $r[0] ? "YES" : "NO";

