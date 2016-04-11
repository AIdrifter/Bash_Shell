
txtred=$(echo -e '\e[0;31m')
txtrst=$(echo -e '\e[0m')

bash | sed -e "s/FAIL/${txtred}FAIL${txtrst}/g"
#bash | sed -e "s/fail/${txtred}fail${txtrst}/g"
#bash | sed -e "s/Fail/${txtred}Fail${txtrst}/g"

#bash | sed -e "s/FAIL/${txtred}FAIL${txtrst}/g"
#bash | sed -e "s/fail/${txtred}fail${txtrst}/g"
#bash | sed -e "s/Fail/${txtred}Fail${txtrst}/g"
