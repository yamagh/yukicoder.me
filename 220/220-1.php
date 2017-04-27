<?php
$n=fgets(STDIN);
$a=split(' ', rtrim(fgets(STDIN)));

$cnt=0;
for($i=0; $i<sizeof($a)-2; $i++){
  list($x,$y,$z)=$s=array_slice($a,$i,3);
  if(sizeof(array_unique($s))!=3) continue;
  if(($x!=max($s) && $x!=min($s)) || ($z!=max($s) && $z!=min($s))) $cnt+=1;
  //echo "\$i:$i \$x:$x \$y:$y \$z:$z max:".max($a)." min:".min($a)." \$cnt:$cnt \n";
}
echo $cnt;

