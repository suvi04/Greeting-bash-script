
while true
do
time=$( date  +"%H:%M" )
day=$( date +"%A %B %e")
hour=$(date +"%H")
minute=$(date +"%M")

if (( hour > 0)) && ((hour < 6))
then 
greet=Night

elif (( hour > 6)) && ((hour < 12))
then 
greet=Morning

elif (( hour > 12)) && ((hour < 16))
then 
greet=Afternoon

elif (( hour > 16)) && ((hour < 23))
then 
greet=night

elif (( hour == 0))
then 
greet=night

fi

if (( $minute == 0 ))
then 
echo Remember to take a break!
echo You are doing great!!
sleep 15

echo Good $greet, $(whoami)
echo $day
echo $time
sleep 5



clear
fi
done

