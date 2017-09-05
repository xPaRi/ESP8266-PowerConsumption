reasonList =
{
    [0] = 'power-on',
    [1] = 'hardware watchdog reset',
    [2] = 'exception reset',
    [3] = 'software watchdog reset',    -- 
    [4] = 'software restart',           -- overeno (prikaz node.restart())
    [5] = 'wake from deep sleep',       -- overeno (i v pripade, ze v dsleep prijde RST manualne)
    [6] = 'external reset'              -- overeno
}

_, reason = node.bootreason()
print('bootreason() = '..reasonList[reason])

