#! /bin/sh 
# echo '================'
echo '== Vimpressions =='
# echo '================'
# Find current day as integer
let current_day=`date +%s`/86400
data_folder="$HOME/.vimpressions" 
data_file="$data_folder/data" 
temp="$data_folder/temp"
tips="$data_folder/tips"
active_tips="$data_folder/active_tips"
num_tips=4

# !!!!!
cp tips $data_folder

# If never run before, set up.
if [ ! -d $data_folder ]; then
    mkdir $data_folder
fi

if [ ! -f $data_file ]; then
    echo "start_day: $current_day" > $data_file
    echo "last_day: $current_day" >> $data_file
    echo "current_tip: 1" >> $data_file
fi

# If no tips, add the first 4
if [ ! -f $active_tips ]; then
    head -n 4 tips > $active_tips
fi

if [ "$1" = 'clear' ]; then
    num=`sed 's/[^[:digit:]]//g' <<< "$2"`
    cat $active_tips | sed "/\[$num\]/ d" > $temp
    cat $temp > $active_tips
fi

# Get values
last_day=`grep last_day $data_file | sed 's/[^[:space:]]* //'`
current_tip=`grep current_tip $data_file | sed 's/[^[:space:]]* //'`
day_delta=`expr $current_day - $last_day`

if [ $day_delta -gt 0 ]; then
    current_tip=`expr $current_tip + 1`

    # Update current item.
    sed "s/current_tip.*/current_tip: $current_tip/" $data_file > $temp
    cat $temp > $data_file

    # Add current item to active tips ONLY if it's not already there.
    if [ ! "`grep "\[$current_tip\]" $active_tips`" ]; then
        grep "\[$current_tip\]" $tips >> $active_tips
    fi
fi

# Update last_day
sed "s/last_day.*/last_day: $current_day/" $data_file > $temp
cat $temp > $data_file


# Remove down to show limit:
tail -n $num_tips $active_tips > $temp
cat $temp > $active_tips

cat $active_tips
