global IFLS "...\IFLS"

ren us06 weight
ren us04 height

replace height=height/100

gen heightsq=height^2
gen bmi = weight/heightsq

replace bmi = 1 if bmi < 18.5 
replace bmi = 2 if bmi >=18.5 & bmi < 24.9
replace bmi = 3 if bmi >=25 & bmi <30
replace bmi = 4 if bmi >=30 & bmi <35
replace bmi = 5 if bmi >=35 & bmi <40
replace bmi = 6 if bmi >=40

la val bmi bmi
la de bmi 1 "1:Underweight" 2 "2:Normal" 3 "3:Overweight" 4 "4:Obese Class I" 5 "5:Obese Class II" 6 "6:Obese Class III"
la var bmi "Body Mass Index"
