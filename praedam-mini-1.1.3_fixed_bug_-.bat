:: This Version of praedam (Mini) was made on 11/22/2017!
:: Changelog:
:: Food storeage added
:: Max hp changed
:: Loot crates (In Progress)
:: Custom tools (In progress)
:: ==============================================
:: VERSION 1.1.3 WAS MADE BY SKYQQR AND L.
:: ==============================================
:: FOR MORE INFOMATION VISIT:
:: https://praedam.weebly.com/
:: OR
:: http://skystuff.weebly.com/praedam/
::
rem start comment
::	-Skyqqr 7/26/2020
:: If you are reading this text, this means that this is not the
:: original version, you might be able to download the original version at one
:: of the two sites above, althrough i am not entirely sure if those old, unupdated websites
:: actually have this version for download, well anyways, this version (1.1.3 +Bugpatch)
:: has been kept in for strictly historical and bug squashing purposes. You can find more information
:: about the newest version at https://github.com/Skyqqr/Praedam-Game
::
@echo off
set b123=113
color 0e
@mode con: cols=80 lines=25
title Praedam - Mini Edition
:continue
cls
if not exist "Preadam(mini)Load.bat" (
goto start
)
call "Preadam(mini)Load.bat"
cls
if %a123% GTR %b123% goto Areusure
:what
color 0a
echo Account Loaded
timeout 1 >nul 
goto hub




:Areusure
cls
color 0c
echo [=============(Warning)============]
echo [ This Version of Praedam is older ]
echo [ then the version in your safe    ]
echo [ file.  it might cause Errors!    ]
echo [  (Make sure to save your game!)  ]
echo [==================================]
echo [    Do you want to continue?      ]
echo [==================================]
echo [     1) No           2) Yes       ]
echo [==================================]
set /p input1=:
if %input1%==1 exit
if %input1%==2 goto what
goto Areusure



:start
cls
set plycritdmg=2
set plycritnum=5
set s1=0
set s2=0
set s3=0
set s4=0
set s5=0
set s6=0
set s7=0
set s8=0
set s9=0
set s10=0
set a123=%b123%
set plyhp=20
set plydm=2
set plymn=5
set plywp=nothing
set plywpne=Nothing
set plyar=nothing
set plyarne=Nothing
set maxplyhp=20
color 0a
echo Created new account.
timeout 10 >nul
goto save


:save
(
echo set plycritdmg=%plycritdmg%
echo set plycritnum=%plycritnum%
echo set s1=%s1%
echo set s2=%s2%
echo set s3=%s3%
echo set s4=%s4%
echo set s5=%s5%
echo set s6=%s6%
echo set s7=%s7%
echo set s8=%s8%
echo set s9=%s9%
echo set s10=%s10%
echo set a123=%b123%
echo set plyhp=%plyhp%
echo set plydm=%plydm%
echo set plymn=%plymn%
echo set plywp=%plywp%
echo set plywpne=%plywpne%
echo set plyar=%plyar%
echo set plyarne=%plyarne%
echo set maxplyhp=%maxplyhp%
)> Preadam(mini)Load.bat
goto hub


:save2
cls
(
echo set plycritdmg=%plycritdmg%
echo set plycritnum=%plycritnum%
echo set s1=%s1%
echo set s2=%s2%
echo set s3=%s3%
echo set s4=%s4%
echo set s5=%s5%
echo set s6=%s6%
echo set s7=%s7%
echo set s8=%s8%
echo set s9=%s9%
echo set s10=%s10%
echo set a123=%b123%
echo set plyhp=%plyhp%
echo set plydm=%plydm%
echo set plymn=%plymn%
echo set plywp=%plywp%
echo set plywpne=%plywpne%
echo set plyar=%plyar%
echo set plyarne=%plyarne%
echo set maxplyhp=%maxplyhp%
)> Preadam(mini)Load.bat
exit





:hub
cls
color 0e
if %plymn% LEQ 0 set plymn=0
if %plyhp% LEQ 0 goto Death
echo.
echo  PlayerMoney: %plymn%                     
echo  PlayerHealth: %plyhp% PlayerDamage: %plydm%
echo [=============================================]
echo [ 0000  00000 00000 00000 0000  00000 00   00 ]
echo [ 00 00 00 00 00 00 00    00 00 00 00 000 000 ]
echo [ 0000  0000  00000 00000 00 00 00000 0000000 ]
echo [ 00    00 00 00 00 00    00 00 00 00 00 0 00 ]
echo [ 00    00 00 00 00 00000 0000  00 00 00   00 ]
echo [===================[Mini]====================]
echo [ 1) Battle 2) Store 3) See Stats 4) QuitGame ]
echo [=============================================]
echo [ ~1 - See Stats ~3 - Save Game ~4 - Restart  ]
echo [=============================================] 
set /p input=Player:
if %input%==~1 goto plyinfo
if %input%==/kill goto death
if %input%==/givemoney goto s
if %input%==/moneygive goto s
if %input%==/give money goto s
if %input%==/give mn goto s
if %input%==/givemn goto s
if %input%==~3 goto save
if %input%==4 goto save2
if %input%==2 goto store0
if %input%==1 goto mobpicker
if %input%==3 goto plyinfo
if %input%==/d0 goto D0
if %input%==~4 goto restart
echo.
echo thats not something you can do
echo.
pause >nul
goto hub


:store0
cls
color 0e
set store?=0
if %plymn% LEQ 0 set plymn=0
echo  PlayerMoney=%plymn%
echo [==========================================] 
echo [A){Weapon}B) Armor C) Foods D) Legendary  ]
echo [==========================================]
echo [ 1) Wooden Sword $9 Damage=+1             ]
echo [==========================================]
echo [ 2) Stone Sword $23 Damage=+3             ]
echo [==========================================]
echo [ 3) Iron Sword $32 Damage=+5              ]
echo [==========================================]
echo [ 4) Steel Sword $43 Damage=+7             ]
echo [==========================================]
echo [ 5) Diamond Sword $67 Damage=+9           ]
echo [==========================================]  
echo [ 6) Titanium Sword $70 Damage=+11         ]
echo [==========================================]
echo [ 7) Damascus Sword $100 Damage=+17        ]
echo [==========================================]
echo [ (10) Sell Items        (~2) Go To Menu   ]
echo [==========================================]
set /p input=Player:
if %input%==A goto store0
if %input%==B goto store1
if %input%==C goto store2
if %input%==D goto store3
if %input%==a goto store0
if %input%==b goto store1
if %input%==c goto store2
if %input%==d goto store3
if %input%==~2 goto hub
if %input%==1 (
if %plywp%==woodensword goto youhave
if %plymn% LEQ 8 goto moremoney
set plywp=woodensword
set plywpne=WoodenSword
set plydm=3
set /a plymn=%plymn%-9
cls
color 0a
echo You have successfully bought wooden sword!
timeout 3 >nul
goto store%store?%
)
if %input%==2 (
if %plywp%==stonesword goto youhave
if %plymn% LEQ 22 goto moremoney
timeout 1 >nul
set plywp=stonesword
set plywpne=StoneSword
set plydm=5
set /a plymn=%plymn%-23
cls
color 0a
echo You have successfully bought stone sword!
timeout 3 >nul
goto store%store?%
)
if %input%==3 (
if %plywp%==ironsword goto youhave
if %plymn% LEQ 31 goto moremoney
timeout 1 >nul
set plywp=ironsword
set plywpne=IronSword
set plydm=7
set /a plymn=%plymn%-32
cls
color 0a
echo You have successfully bought iron sword!
timeout 3 >nul
goto store%store?%
)
if %input%==4 (
if %plywp%==stealsword goto youhave
if %plymn% LEQ 42 goto moremoney
timeout 1 >nul
set plywp=stealsword
set plywpne=StealSword
set plydm=9
set /a plymn=%plymn%-43
cls
color 0a
echo You have successfully bought steel sword!
timeout 3 >nul
goto store%store?%
)
if %input%==5 (
if %plywp%==diamondsword goto youhave
if %plymn% LEQ 66 goto moremoney
timeout 1 >nul
set plywp=diamondsword
set plywpne=DiamondSword
set plydm=11
set /a plymn=%plymn%-67
cls
color 0a
echo You have successfully bought diamond sword!
timeout 3 >nul
goto store%store?%
)
if %input%==6 (
if %plywp%==titaniumsword goto youhave
if %plymn% LEQ 69 goto moremoney
timeout 1 >nul
set plywp=titaniumsword
set plywpne=TitaniumSword
set plydm=13
set /a plymn=%plymn%-70
cls
color 0a
echo You have successfully bought titanium sword!
timeout 3 >nul
goto store%store?%
)
if %input%==7 (
if %plywp%==damascussword goto youhave
if %plymn% LEQ 99 goto moremoney
timeout 1 >nul
set plywp=damascussword
set plywpne=DamascusSword
set plydm=19
set /a plymn=%plymn%-100
cls
color 0a
echo You have successfully bought damascus sword!
timeout 3 >nul
goto store%store?%
)

echo.
echo thats not an item you can buy
echo.
pause >nul
goto store%store?%



:toomuch
cls
echo [===========================================]
echo [ You dont have enough Space for this Item! ]
echo [===========================================]
pause >nul
goto store%store?%






:youhave
cls
echo [===========================]
echo [You already have this item ]
echo [===========================]
pause >nul
goto store%store?%


:moremoney
cls
echo [=====================================]
echo [You need more money to buy this item ]
echo [=====================================]
pause >nul
goto store%store?%



:store1
cls
color 0e
set store?=1
if %plymn% LEQ 0 set plymn=0
echo  PlayerMoney=%plymn%
echo [==========================================] 
echo [A) Weapon B){Armor}C) Foods D) Legendary  ]
echo [==========================================]
echo [ 1) Leather Armor $13 Health=+3           ]
echo [==========================================]
echo [ 2) Chain Armor $26 Health=+7             ]
echo [==========================================]
echo [ 3) Iron Armor $29 Health=+8              ]
echo [==========================================]
echo [ 4) Steel Armor $32 Health=+10            ]
echo [==========================================]
echo [ 5) Diamond Armor $56 Health=+12          ]
echo [==========================================]  
echo [ 6) Titanium Armor $112 Health=+22        ]
echo [==========================================]
echo [ 7) Damascus Armor $234 Health=+30        ]
echo [==========================================]
echo [ (10) Sell Items        (~2) Go To Menu   ]
echo [==========================================]
set /p input=Player:
if %input%==A goto store0
if %input%==B goto store1
if %input%==C goto store2
if %input%==D goto store3
if %input%==a goto store0
if %input%==b goto store1
if %input%==c goto store2
if %input%==d goto store3
if %input%==~2 goto hub
if %input%==1 (
if %plyar%==leatherarmor goto youhave
if %plymn% LEQ 13 goto moremoney
timeout 1 >nul
set plyar=leatherarmor
set plyarne=LeatherArmor
set maxplyhp=23
set /a plymn=%plymn%-13
cls
color 0a
echo You have successfully bought leather armor!
timeout 3 >nul
goto store%store?%
)

if %input%==2 (
if %plyar%==chainarmor goto youhave
if %plymn% LEQ 26 goto moremoney
timeout 1 >nul
set plyar=chainarmor
set plyarne=ChainArmor
set maxplyhp=27
set /a plymn=%plymn%-26
cls
color 0a
echo You have successfully bought chain armor!
timeout 3 >nul
goto store%store?%
)

if %input%==3 (
if %plyar%==ironarmor goto youhave
if %plymn% LEQ 29 goto moremoney
timeout 1 >nul
set plyar=ironarmor
set plyarne=IronArmor
set maxplyhp=28
set /a plymn=%plymn%-29
cls
color 0a
echo You have successfully bought iron armor!
timeout 3 >nul
goto store%store?%
)

if %input%==4 (
if %plyar%==steelarmor goto youhave
if %plymn% LEQ 32 goto moremoney
timeout 1 >nul
set plyar=steelarmor
set plyarne=SteelArmor
set maxplyhp=30
set /a plymn=%plymn%-32
cls
color 0a
echo You have successfully bought iron armor!
timeout 3 >nul
goto store%store?%
)

if %input%==5 (
if %plyar%==diamondarmor goto youhave
if %plymn% LEQ 56 goto moremoney
timeout 1 >nul
set plyar=diamondarmor
set plyarne=DiamondArmor
set maxplyhp=32
set /a plymn=%plymn%-56
cls
color 0a
echo You have successfully bought diamond armor!
timeout 3 >nul
goto store%store?%
)

if %input%==6 (
if %plyar%==titaniumarmor goto youhave
if %plymn% LEQ 112 goto moremoney
timeout 1 >nul
set plyar=titaniumarmor
set plyarne=TitaniumArmor
set maxplyhp=42
set /a plymn=%plymn%-112
cls
color 0a
echo You have successfully bought titanium armor!
timeout 3 >nul
goto store%store?%
)

if %input%==7 (
if %plyar%==damascusarmor goto youhave
if %plymn% LEQ 234 goto moremoney
timeout 1 >nul
set plyar=damascusarmor
set plyarne=DamascusArmor
set maxplyhp=50
set /a plymn=%plymn%-234
cls
color 0a
echo You have successfully bought damascus armor!
timeout 3 >nul
goto store%store?%
)

echo.
echo thats not an item you can buy
echo.
pause >nul
goto store%store?%



:store2
cls
color 0e
set store?=2
if %plymn% LEQ 0 set plymn=0
echo  PlayerMoney=%plymn%
echo [==========================================] 
echo [A) Weapon B) Armor C){Foods}D) Legendary  ]
echo [==========================================]
echo [ 1) WaterMelon $2 Health=+2               ]
echo [==========================================]
echo [ 2) BakedPotato $4 Health=+4              ]
echo [==========================================]
echo [ 3) Burger and Fries $8 Health=+8         ]
echo [==========================================]
echo [ 4) Mushroom Stew $16 Health=+16          ]
echo [==========================================]
echo [ 5) Steak and Mushrooms $20 Health=+20    ]
echo [==========================================]  
echo [ 6) Pound Cake $24 Health=+24             ]
echo [==========================================]
echo [ 7) The Head of life $30 Health=+30       ]
echo [==========================================]
echo [ (10) Sell Items        (~2) Go To Menu   ]
echo [==========================================]
set /p input=Player:
if %input%==A goto store0
if %input%==B goto store1
if %input%==C goto store2
if %input%==D goto store3
if %input%==a goto store0
if %input%==b goto store1
if %input%==c goto store2
if %input%==d goto store3
if %input%==~2 goto hub
if %input%==1 (
set fooditem=WaterMelon
set fooditemhp=2
set fooditemmn=2
set foodslot=1
if %plymn% LEQ 1 goto moremoney
goto bez
)
if %input%==2 (
set fooditem=BakedPotato
set fooditemhp=4
set fooditemmn=4
set foodslot=2
if %plymn% LEQ 3 goto moremoney
goto bez
)

if %input%==3 (
set fooditem=BurgerAndFries
set fooditemhp=8
set fooditemmn=8
set foodslot=3
if %plymn% LEQ 7 goto moremoney
goto bez
)

if %input%==4 (
set fooditem=MushroomStew
set fooditemhp=16
set fooditemmn=16
set foodslot=4
if %plymn% LEQ 15 goto moremoney
goto bez
)

if %input%==5 (
set fooditem=SteakAndMushrooms
set fooditemhp=20
set fooditemmn=20
set foodslot=5
if %plymn% LEQ 19 goto moremoney
goto bez
)

if %input%==6 (
set fooditem=PoundCake
set fooditemhp=24
set fooditemmn=24
set foodslot=6
if %plymn% LEQ 23 goto moremoney
goto bez

)

if %input%==7 (
set fooditem=HeadOfLife
set fooditemhp=30
set fooditemmn=30
set foodslot=7
if %plymn% LEQ 37 goto moremoney
goto bez
)
goto store%store?%



:bez
cls
echo [=====================================]
echo  You Have bought a %fooditem%!       
echo  Would you like to save it for later 
echo  or eat it now?             
echo [=====================================]
echo [ 1) Save                    2) Eat   ]
echo [=====================================]     
set /p i=:
if %i%==1 (
set /a s%foodslot%=%s%%foodslot%+1
cls
set /a plymn=%plymn%-%fooditemmn%
goto store%store?%
)
if %i%==2 (
if %plyhp% GEQ %maxplyhp% goto fullhp
set /a plyhp=%plyhp%+%fooditemhp%
set /a plymn=%plymn%-%fooditemmn%
cls
color 0a
echo +%fooditemhp% HP! 
timeout 2 >nul
cls
color 0e
goto store%store?%
)







echo.
echo thats not an item you can buy
echo.
pause >nul
goto store%store?%

:fullhp
cls
echo [================================]
echo [ You are to full to eat anymore ]
echo [================================]
pause >nul
goto store%store?%








:store3
color 0e
cls
set store?=3
if %plymn% LEQ 0 set plymn=0
echo  PlayerMoney=%plymn%
echo [==========================================] 
echo [A) Weapon B) Armor C) Foods D){Legendary} ]
echo [==========================================]
echo [ 1) Legendary Sword $500 Damage=+100      ]
echo [==========================================]
echo [ 2) Legendary Armor $650 Health=+100      ]
echo [==========================================]
echo [ 3) Saint Sword $1000 Damage=+500         ]
echo [==========================================]
echo [ 4) Saint Armor $1500 Health=+500         ]
echo [==========================================]
echo [ 5) Zweusz Sword $2000 Damage=+1000       ]
echo [==========================================]
echo [ 6) Zweusz Armor $2500 Health=+1000       ]
echo [==========================================]
echo [ 7) Swouxs Rank $5000 Everthing=+100000   ]
echo [==========================================]
echo [ (10) Sell Items        (~2) Go To Menu   ]
echo [==========================================]
set /p input=Player:
if %input%==A goto store0
if %input%==B goto store1
if %input%==C goto store2
if %input%==D goto store3
if %input%==a goto store0
if %input%==b goto store1
if %input%==c goto store2
if %input%==d goto store3
if %input%==~2 goto hub
if %input%==1 (
if %plywp%==legendarysword goto youhave
if %plymn% LEQ 499 goto moremoney
timeout 1 >nul
set plywp=legendarysword
set plywpne=LegendarySword
set plydm=100
set /a plymn=%plymn%-500
cls
color 0a
echo You have successfully bought legendary sword!
timeout 3 >nul
goto store%store?%
)
if %input%==2 (
if %plyar%==legendaryarmor goto youhave
if %plymn% LEQ 649 goto moremoney
timeout 1 >nul
set plyar=legendaryarmor
set plyarne=LegendaryArmor
set maxplyhp=100
set /a plymn=%plymn%-650
cls
color 0a
echo You have successfully bought legendary armor!
timeout 3 >nul
goto store%store?%
)

echo.
echo thats not an item you can buy
echo.
pause >nul
goto store%store?%



:mobpicker
set /a mob=%random% %% 3
if %mob%==0 (
set mobhp=7
set mobdm=4
set mobm=8
set mobas=3
set mobne=Spirit
goto plyturn
)

if %mob%==1 (
set mobhp=15
set mobdm=2
set mobm=10
set mobas=1
set mobne=Goblin
goto plyturn
)

if %mob%==2 (
set mobhp=19
set mobdm=1
set mobas=1
set mobne=Golem
set mobm=7
goto plyturn
)

if %mob%==3 (
set mobhp=16
set mobdm=3
set mobas=2
set mobne=Org
set mobm=9
goto plyturn
)



:plyturn
if %plyhp% LEQ 0 goto Death
if %mobhp% LEQ 0 goto MDeath
cls
echo  MobName=%mobne%
echo  MobHealth=%mobhp% MobDamage=%mobdm%
echo  YourHealth=%plyhp% YourDamage=%plydm%
echo [========================================]
echo [ 1) Attack 2) Food 3) Block 4) Escape   ]
echo [========================================]
set /p input=Player:
if %input%==1 (
set /a mobhp=%mobhp%-%plydm%
goto mobturn
)
if %input%==2 (
goto foodlist
)
if %input%==4 (
goto esc
)
echo.
echo thats not an action you can do
echo.
pause >nul
goto plyturn

:esc
set /a esc153=%random% %% 3
if %esc153%==0 goto escfail
if %esc153%==1 goto escg
if %esc153%==2 goto escfail
if %esc153%==3 goto escfail


:escg
cls
color 0a
echo You Have Escaped!
timeout 2 >nul
Goto hub





:escfail
cls
color 0c
echo your escape failed!
timeout 5 >nul
color 0e
goto mobturn






:mobturn
if %mobhp% LEQ 0 goto MDeath
if %plyhp% LEQ 0 goto Death
cls
echo The enemy is thinking
timeout 2 >nul
set /a mobatk=%random% %% 3
if %mobatk%==0 goto mobskipatk

if %mobatk%==1 (
set /a plyhp=%plyhp%-%mobdm%
goto mobpunchatk
)

if %mobatk%==2 (
goto mobhealatk
)



:mobhealatk
set /a mobhp=%mobhp%+%mobas%
cls
echo [========================]
echo  %mobne% gained +%mobas% health
echo [========================]
timeout 3 >nul
goto plyturn


:mobpunchatk
cls
echo [=============================]
echo  %mobne% dealed %mobdm% Damage to you
echo [=============================]
timeout 3 >nul
goto plyturn



:mobskipatk
cls
echo [===============================]
echo  The %mobne% skipped your attack
echo [===============================]
timeout 3 >nul
goto mobturn


:foodlist
color 0e
cls
echo ]==============(Food)==============[
echo  1) WaterMelon: %s1% +2 HP
echo ]==================================[
echo  2) BakedPotatos: %s2% +4 HP
echo ]==================================[
echo  3) BurgerAndFries: %s3% +8 HP
echo ]==================================[
echo  4) MushroomStew: %s4% +16 HP
echo ]==================================[
echo  5) SteakAndMushrooms: %s5% +20 HP
echo ]==================================[
echo  6) PoundCake: %s6% +24 HP
echo ]==================================[
echo  7) HeadOfLife: %s7% +30 HP
echo ]==================================[
echo  (~8 Next Page)  (~9 Back to fight)
set /p input=Player:
if %input%==1 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+2
set /a s1=%s1%-1
cls
color 0a
echo +2 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==2 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+4
set /a s2=%s2%-1
cls
color 0a
echo +4 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==3 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+8
set /a s3=%s3%-1
cls
color 0a
echo +8 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==4 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+16
set /a s4=%s4%-1
cls
color 0a
echo +16 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==5 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+20
set /a s5=%s5%-1
cls
color 0a
echo +20 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==6 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+24
set /a s6=%s6%-1
cls
color 0a
echo +24 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==7 (
if %plyhp% GEQ %maxplyhp% goto fullhp1
set /a plyhp=%plyhp%+30
set /a s7=%s7%-1
cls
color 0a
echo +30 HP!
timeout 2 >nul
cls
goto foodlist
)
if %input%==~9 goto plyturn
goto foodlist






:fullhp1
cls
echo [================================]
echo [ You are to full to eat anymore ]
echo [================================]
pause >nul
goto foodlist





:MDeath
set /a plymn=%plymn%+%mobm%
cls
color 0a
echo.
echo.
echo.
echo.
echo. 
echo             000 000 0000000 000 000    000     000 000 000   000
echo             000 000 0000000 000 000    000 000 000 000 0000  000
echo             000 000 000 000 000 000    000 000 000     00000 000
echo             0000000 000 000 000 000    00000000000 000 000000000
echo              00000  000 000 000 000    00000000000 000 000 00000
echo               000   0000000 0000000    00000 00000 000 000  0000
echo               000   0000000 0000000    0000   0000 000 000   000
pause >nul
cls
echo You have gotten %mobm% Money!
pause >nul
cls
color 0e
goto hub








:plyinfo
cls
echo [===================]
echo  PlayerArmor=%plyarne%
echo [===================]
echo  PlayerWeapon=%plywpne%
echo [===================]
echo  PlayerHealth=%plyhp%
echo [===================]
echo  PlayerDamage=%plydm%
echo [===================]
echo  PlayerMoney=%plymn%
echo [===================]
pause >nul
goto hub



:death
del "Preadam(mini)Load.bat"
cls
color 0c
echo.
echo.
echo.
echo.
echo.
echo             000 000 0000000 000 000   000000  000 0000000 000000
echo             000 000 0000000 000 000   0000000 000 0000000 0000000
echo             000 000 000 000 000 000   000 000     000     000 000
echo             0000000 000 000 000 000   000 000 000 0000000 000 000
echo              00000  000 000 000 000   000 000 000 000     000 000
echo               000   0000000 0000000   0000000 000 0000000 0000000
echo               000   0000000 0000000   000000  000 0000000 000000
pause >nul
cls
color 0b
echo Press any key to respawn...
pause >nul
color 0e
goto start






:s
cls
color 0e
echo [===============(.SKYS CHEAT SYSTEM.)================]
echo [ - INPUT NUMBER FOR WHAT YOU WANT TO SET YOUR MONEY ]
echo [ - VALUE AS.                                        ]
echo [                                                    ]
echo [====================================================]
echo [ ~9 - Go to menu                                    ]
echo [====================================================]
set /p popop=:
set plymn=%popop%
if %input%==1 goto hub
goto hub




:restart
cls
echo Are you sure you want to restart your game
echo  1) Yes 2) No
echo.
set /p input=Player:
if %input%==1 (
del "Preadam(mini)Load.bat"
timeout >nul
goto start
)
if %input%==2 goto hub

echo.
echo thats not an item you can buy
echo.
pause >nul
goto restart




:getitem
cls
color 0e
echo.
echo.
echo.
echo [=============================]
echo   You have gotten a %IGname% ! 
echo [=============================]
echo   Would you like to sell or Save 
echo [=============================]
echo [ 1) Sell                     ]
echo [ 2) Save                     ]
echo [=============================]
set /p input=Player:
if %input%==1 (
set /a plymn=%plymn%+%IGMN%
color 0a
cls
echo +%IGMN% Money!
pause >nul
goto %IGGOTO%
)
if %input%==2 (
if %IGTYPE%==WEAPON
if %IGTYPE%==ARMOUR
if %IGTYPE%==FOOD
)
echo.
echo no
echo.
pause >nul



:: C1 WaterMelon: %s1% +2 HP
:: C2 BakedPotatos: %s2% +4 HP
:: C3 BurgerAndFries: %s3% +8 HP
:: C4 MushroomStew: %s4% +16 HP
:: C5 SteakAndMushrooms: %s5% +20 HP
:: C6 PoundCake: %s6% +24 HP
:: C7 HeadOfLife: %s7% +30 HP



:D0
set IGTYPE=WEAPON
set IGname=MEMESWOrD
set IGMN=999
set IGGOTO=hub
goto getitem



:lvl1c1
set /a ce1=%random% %% 9
if %ce1%==0 goto i1 
::blueberry
if %ce1%==1 goto i2 
::apple
if %ce1%==2 goto i3 
::wooden sword
if %ce1%==3 goto i4 
::strawberry
if %ce1%==4 goto i5 
::watermelon
if %ce1%==5 goto i6 
::wooden axe
if %ce1%==6 goto i7 
::stone dagger
if %ce1%==7 goto i8 
::baked potato
if %ce1%==8 goto i9 
::Worn leather Armour
if %ce1%==9 goto i10 
::bacon strip