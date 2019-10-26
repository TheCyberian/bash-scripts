#!/bin/bash

declare -r NUM1=5

num2=4

num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))
num7=$((NUM1%num2))

echo "5 + 4 = $num3"
echo "5 - 4 = $num4"
echo "5 * 4 = $num5"
echo "5 / 4 = $num6"
echo "5 % 4 = $num7"

echo $((5**2))

rand=5
let rand+=4
echo "$rand"


echo "rand++ = $(( rand++ ))"
echo "++rand = $(( ++rand ))"
echo "rand-- = $(( rand-- ))"
echo "--rand = $(( --rand ))"

num8=1.2
num9=3.4
num10=$(python -c "print $num8+$num9")
echo $num10

cat<< END
This text 
prints on 
multi lines
END


