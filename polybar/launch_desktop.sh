

#terminate running instances
killall -q polybar

#wait until processes shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done




#meu 
#polybar topbar &

#space git   
#https://github.com/jaagr/dots/blob/master/.local/etc/themer/themes/space/polybar
# polybar top &
polybar top1 &
polybar top2 &
#polybar bottom &


echo "Bars launched..."
