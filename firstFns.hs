doubleMe x = x + x
doubleUs x y = x*2 + y*2
doubleUsV2 x y = doubleMe x + doubleMe y
doubleSmallerNumber x = if x > 100
                        then x
                        else x * 2
dsn2 x = (if x > 100 then x else x * 2) + 1
a = 100
b = [100, 99]