p gets.to_i<=1? 0 : ("%b" % ($_.to_i-1)).size

#if gets.to_i == 0
#  p 0
#else
#  p ("%b" % ($_.to_i-1)).size
#end

#N=gets.to_i
#case N
#when 1             then 1
#when (2..3)        then 2
#when (4..7)        then 3
#when (8..15)       then 4
#when (16..31)      then 5
#when (32..63)      then 6
#when (64..127)     then 7
#when (128..255)    then 8
#when (256..511)    then 9
#when (512..1023)   then 10
#when (1024..2047)  then 11
#when (2048..4095)  then 12
#when (4096..8191)  then 13
#when (8192..16383) then 14
#end

