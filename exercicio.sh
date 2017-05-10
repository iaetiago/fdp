#!/bin/bash
clear
int=1
francis=0
titi=0
while (( $int != 0 )); do
        read -p "Digite um numero" num[$francis]
        int=${num[$francis]}
        let francis=$francis+1
        t=$francis
done
for (( u=0; u < $francis; u++ )); do
 	for (( y=0; y < $francis; y++ )); do
		if (( $titi <= ${num[$y]} )); then

 		titi=${num[$y]}
                x=$y
                tt[$t]=$titi
       fi
    done
                 num[$x]=0
                 let t=$t-1
                 titi=0
done
echo ${tt[*]}
       
