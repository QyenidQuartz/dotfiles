function volume
    if [ $argv ]
	command osascript -e "set volume output volume $argv"
    else
        command osascript -e 'output volume of (get volume settings)'
    end
end
