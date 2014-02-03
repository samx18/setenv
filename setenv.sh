#!/bin/sh
echo "Choose your PacWest R12 EBS Environment"
echo "########################################"
echo "1) PacWest R12 Dev (EBSPWDEV)"
echo "2) PacWest R12 CRP (EBSPWCRP)"
echo "3) PacWest R12 UAT (EBSPWUAT)"
echo "4) PacWest R12 DBA (EBSPWDBA)"
echo "5) PacWest 11g Disco (DISPWDEV)"
echo "6) I am lost,Just get me out of here (Quit) "
read -p "Please select a option fom above [1-6] :" ch
until [[ $ch == [0-9] ]]; do
        echo "Sorry, I understand only numbers between 1 & 6, inclusive"
        read -p "Please select a option [1-6] :" ch
done
while [ "$ch" -lt 1 ] || [ "$ch" -gt 6 ]; do
        echo "Sorry, I understand only numbers between 1 & 6, inclusive"
        read -p "Please select a option fom above [1-6] :" ch
done
case "$ch" in
   1) echo "You selected EBSPWDEV"
        echo "Setting your environment now..."
        . /u01/ebspwdev/EBSPWDEV/apps/apps_st/appl/APPSEBSPWDEV_sabodap52.env
   ;;
   2) echo "You selected EBSPWCRP"
        echo "Setting your environment now..."
        . /u01/ebspwcrp/EBSPWCRP/apps/apps_st/appl/APPSEBSPWCRP_sabodap52.env
   ;;
   3) echo "You selected EBSPWUAT"
        echo "Setting your environment now..."
        . /u01/ebspwuat/EBSPWUAT/apps/apps_st/appl/APPSEBSPWUAT_sabodap52.env
   ;;
   4) echo "You selected EBSPWDBA"
        echo "Setting your environment now..."
        . /u01/ebspwdba/EBSPWDBA/apps/apps_st/appl/APPSEBSPWDBA_sabodap52.env
   ;;
   5) echo "You selected DISPWDEV"
        echo "Setting your environment now..."
        . /u01/dispwdev/DISPWDEV/MW_HOME/asinst_1/Discoverer/Discoverer_asinst_1/util/discenv.sh
   ;;
   6) echo "You selected to Quit"
        echo "Yay!nothing for me to do.Goodbye!"
   ;;
esac

