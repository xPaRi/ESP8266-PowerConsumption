function abortInit()
    print('Press ENTER to abort startup')
    
    uart.on('data', '\r', function(data) 
        tmr.unregister(0) --disable the start up timer
        uart.on('data') --stop capturing the uart
        print('Startup aborted')
    end, 0)

    tmr.alarm(0,3000,0, function()
        uart.on('data')-- stop capturing the uart
        print('Running startup')
        dofile('main.lua') --run the main program
    end)
end

tmr.alarm(0, 1000, 0, abortInit)
