-- TEST 1
-- prechod na hlubokého spínku
-- probuzení RST nebo casovacem z D0 na RST

-- node.dsleep(us, option, instant)

-- us       cas v microsekundach, pak se opet probudi
--          pokud je nil, tak ceka na GND na RESET
--          4294967295us, ~71 minut.

-- option   0, init data byte 108 is valuable
--          > 0, init data byte 108 is valueless
--          0, RF_CAL or not after deep-sleep wake up, depends on init data byte 108
--          1, RF_CAL after deep-sleep wake up, there will be large current
--          2, no RF_CAL after deep-sleep wake up, there will only be small current
--          4, disable RF after deep-sleep wake up, just like modem sleep, there will be the smallest current

-- instant  nepouzivat, jedna se o nedokumentovanou funkci

-- Priklady        
-- node.dsleep(5*1000000) -- po 5 sekundach se restartuje

--node.dsleep(5*1000000, 0) --???
--node.dsleep(5*1000000, 1) --???
--node.dsleep(5*1000000, 2) --???
--node.dsleep(5*1000000, 4) -- po probuzeni modem spi a je maly odber [], po restartu se vse vrati do puvodniho stavu
 