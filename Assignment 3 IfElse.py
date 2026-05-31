"""
====================================================================================================
A. Python IF (Single Condition)


1. Write a Python program to check if a number is positive.
==>
num = int(input(" Enter a number " ))
if num>0:
    print("Number is Positive")

2. Print "Eligible to vote" if age is 18 or above.
==>
num = int(input("Enter Number : "))

if num>18:
    print("Elgible to vote")
if num<18:
    print("Not vote ")

3. Check if a number is divisible by 7.
==>
num = int(input("Enter Number : "))
if num%7==0:
    print("number is divisible by 0")
if num%7!=0:
    print("Not divisble")

4. Print "Pass" if marks are greater than 40.
==>
num = int(input("Enter Number: "))
if num>40:
    print("Pass")
if num<40:
    print("Fail")

5. Check if a number is greater than 100.
==>
num = int(input("Enter Number: "))

if num>100:
    print("Greater")
if num<100:
    print("Smaller")

6. Display a message if temperature exceeds 45°C.
==>
if num>45:
    print (" temperature exceeds 45°C !")

7. Check if a string length is more than 8 characters. 
==>
str = input("Enter a Text ")
if len(str)>8:
    print (" length is greater then 8 ")
if len(str)<8:
    print("Length is under in 8 charcter")

8. Print "Logged In" if password matches "admin123". 
==> 
Password = input (" Enter A correct Password " )
if Password== "admin123":
    print("Loggin Succesfully")
if Password!="admin123":
    print("Retry Agin")

9. Check if a number is a multiple of 10.
==>
num = float(input("Enter A Number : "))
if num%10==0:
    print("Number is multiple of 10")

10. Print a warning if balance is below minimum limit. 
==>
balance = float(input("Enter Money  for checking "))
if balance<1000:
    print("Warning ! balance is below According to  minimun limit")
=====================================================================================================
B. Python IF–ELSE (Two Conditions)

11. Check whether a number is even or odd.
==>
num = float(input("Enter A Number"))
if num%2==0:
    print("Number is Even")
else:
    print("Number is odd")

12. Find the largest of two numbers. 
==>
A = float(input("Enter Number A "))
B = float(input("Enter Number B "))
if A>B:
    print("A is Greater then B")
else:
    print("B is Greater then A")

13. Check whether a person is eligible for driving license.
==>
Age = int( input( "Enter A Valid Age : "))
if Age>=18:
    print("Eligible to vote" )
else:
    print("You cannot vote " )

14. Print "Pass" or "Fail" based on marks.
==>
num = float( input(" Enter A number  in percentage  dont use percentage sign : "))
if num>=33:
    print(" You are passed and you have got " , num ,"%")
else:
    print("Fail")

15. Check whether a number is positive or negative. 
==>
num = float(input("Enter a number "))
if num>0:
    print("Positive number")
else:
    if num==0:
        print("number is zero")
    else:
        print("Negative  number")

16. Check whether a character is a vowel or consonant. 
==>
ch = input("Enter the charcter : ")
if ch in "AEIOUaeiou":
    print("Vowel")
else:
    print("Consonent")


17. Check if a year is leap or not. 
year = int(input("Enter A Year : "))

if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
    print("Leap Year")
else:
    print("Not Leap Year")

18. Print "Valid Password" or "Invalid Password".
==>
password = input("Enter a valid password : ")
if password == "admin123":
    print("Valid Passowrd ")
else:
    print("Invalid Password " )

19. Determine whether salary is taxable or not.
==>
salary = float(input("Enter Your Salary "))
if salary<19999.00:
    print( " Salary is not Taxable")
else:
    print(" Taxable")
    
20. Check whether a number is greater than 50 or not. 
==>
num = float(input("Enter a number : "))
if num > 50:
    print("gretaer then 50")
else :
    print("Less then 50")
===================================================================================================
C. Python NESTED IF–ELSE

21. Find the largest of three numbers.
==>
a = float(input("Enter number A : "))
b = float(input("Enter number B : "))
c = float(input("Enter number C : "))

if a > b:
    if a > c:
        print("A is Greater")
    else:
        print("C is Greater")
else:
    if b > c:
        print("B is Greater")
    else:
        print("C is Greater")

        a > b ?
        /    \
      Yes     No
      /         \
   a > c ?      b > c ?
   /    \       /     \
 A big  C big  B big  C big

23. Assign grades: ● A → marks ≥ 90 ● B → marks ≥ 75 ● C → marks ≥ 60 ● Fail → below 60
==>
marks = float(input("Enter marks: "))
if marks>=90:
    print(" A grade")
else:
    if marks>=75 and marks<90:
        print(" B grade")
    else:
        if marks>=60 and marks<75:
            print(" C grade ")
        else:
            print("Fail")

24. Check whether a triangle is equilateral, isosceles, or scalene

25. Check whether a character is uppercase, lowercase, digit, or special character. 
==>
ch = input("Enter value : ")
if ch>="A" and ch<="Z":
    print("Uppercase Letter" )
else:
    if ch>="a" and ch<="z":
        print("Lower Case ")
    else:
        if ch.isdigit():
            print("Digit")
        else:
            print("Symbol")

26. Calculate electricity bill using slab-wise rates.
==>
unit =  float(input("Enter Your UNIT : " ))
if unit>0 and unit<=100:
    result = unit*2
    print(" Your bill is : " , result)
else:
    if unit>100 and unit<=200:
        result = unit*4
        print(" Your bill is : " , result)
    else:
        if unit>200 and unit<=10000:
            result = unit*9
            print(" Your bill is : " , result)
        else:
            print("Invalid Input")

27. Validate login using username and password.
==>
username = input("Enter UserName : ")
Password =input("Enter PassWord : ")
if username == "admin":
    if Password == "admin123":
        print("Login Successfully")
    else:
        print("Invalid Password ! ")
        
else:
    print("Invalid UserName ")

    
28. Check student result using marks of 3 subjects.
==>
First = float(input("Enter First Subject Marks "))
Second = float(input("Enter Second Subject Marks "))
Third = float(input("Enter Third Subject Marks "))
Totalmarks  = 300
StudentMarks =  (First+Second+Third) / Totalmarks *100
print("You got :-" ,  StudentMarks)

if StudentMarks < 33:
    print("fail")
else:
    print("pass")

29. Find the second largest number among three numbers.


30. Check loan eligibility using age, salary, and credit score.
==>

Age = int(input("Enter Your Age : "))
Salary = float(input("Enter Your Salary : "))
CreditScore = int(input("Enter Your Credit Score : "))

if Age>=21:
    if Salary>=50000:
        if CreditScore>700:
            print("Loan Approved")
        else:
            print("insufficent CreditScore")
    else:
        print("Salary is Low as compare to Requirement")
else:
    print("Age is low : Loan has denied due to not fulfill the Requiements")


=====================================================================================================
D. Python ELIF (Multiple Conditions)

31. Print day name using day number (1–7).
==>
num = int(input("Enter Number : "))
if num == 1:
    print("Sunday")
elif num == 2 :
    print("Monday")
elif num == 3:
    print("Tuesday")
elif num == 4:
    print("Wednesday")
elif num == 5:
    print("Thursday")
elif num ==6 :
    print("Friday")
elif num == 7:
    print("Saturday")
else:
    print("Number is out of Range " )


32. Print month name using month number.
==>
num = int(input("Enter Number : "))
if num == 1:
    print("January")
elif num == 2 :
    print("February")
elif num == 3:
    print("March")
elif num == 4:
    print("April")
elif num == 5:
    print("May")
elif num ==6 :
    print("June")
elif num == 7:
    print("July")
elif num == 8 :
    print("August")
elif num == 9:
    print("September")
elif num == 10:
    print("October")
elif num == 11:
    print("November")
elif num == 12:
    print("December")

else:
    print("Number is out of Range " )

    
33. Display grade based on percentage.
==>
marks = float(input("Enter Your Percentage"))
if marks>=90 and marks<100:
    print("A Grade")
elif marks>=75 and marks <90:
    print("B Grade")
elif marks>=55 and marks <75:
    print("C Grade")
elif marks>=45 and marks <55:
    print("D Grade")
elif marks>=33 and marks <45:
    print("C Grade")
elif marks<33:
    print("F Grade ! Fail")
else:
    print("Invalid UserInput")


34. Display bonus percentage based on experience years. 
==>
Experience = int(input("Enter your Experince in year out of 20 year: "))
if Experience>=10 and Experience<=20:
    print("Bonus 20%")
elif Experience>=5 and Experience<10:
    print("Bonus 10%")
elif Experience>=2 and Experience<5:
    print("Bonus 5%")
elif Experience<2:
    print(" No bonus")
else:
    print("Out Of Range")

    
    
35. Identify traffic signal meaning.
==>
signal = input(" Enter the Traffic Signal Colour : ").lower()
if signal=="red":
    print("Stop")
elif signal == "green":
    print("Go")
elif signal == "yellow":
    print("Be Ready to Go")
else :
    print("Invalid UserInput")

36. Categorize temperature as Cold / Warm / Hot.
==>
input = float(input("Enter Temperature "))
if input>=-20 and input<=15:
    print("Cold")
elif input>15 and input<=30:
    print("Warm")
elif input>30 and input<50:
    print("Hot")

37. Categorize employee based on salary range. 
==>
salary = float(input("Enter your Salary "))
if salary >= 100000:
    print(" best Employee ")
elif salary>=50000 and salary<100000:
    print("Average Employee ")
elif salary >=10000 and salary<50000:
    print("Lower Average")
else:
    print(" Employee on contract  Work")

38. Print discount percentage based on purchase amount.
==>
Amount = float(input("Enter Purchase Amount : "))
if Amount>=100000:
    print("Discount will be 40% ")
elif Amount<100000 and Amount>=70000:
    print("Discount Will be 25%")
elif Amount>=40000 and Amount<70000:
    print("Discount Will be 10%")
else:
    print("lower 40000 :- No Discount")

39. Identify number type: single-digit / double-digit / multi-digit.
==>
num = int(input("Enter Number"))
if num>=-9 and num<=9:
    print("Number is Single digit")
elif num>=-99 and num<=99:
    print("Number is Double Digit")
else:
    print("Multidigit")

            or

            
num = input("Enter Number : ")

num = num.replace(".", "").replace("-", "")

count = len(num)

if count == 1:
    print("Number is Single Digit")

elif count == 2:
    print("Number is Double Digit")

else:
    print("Multi Digit")


40. Assign performance rating: Poor / Average / Good / Excellent.
==>
num = float(input("Enter Number Out of 10 : "))
if num < 0 or num > 10:
    print("Invalid Input")
elif num>=9 and num<=10:
    print("Excellent")
elif num>=7 and num<9:
    print("Good")
elif num>=5 and num < 7:
    print("Average")
else:
    print("Poor")

======================================================================================================


41. Check whether a number is divisible by 5 and 11.
==>
num = int(input(" Enter A number : " ))
if num%5==0 and num%11==0:
    print( " Number is divisble by 5 and 11 both ")
else :
    print("Number is not divisble ")

42. Check if a person is eligible for loan: ● age ≥ 21 ● salary ≥ 25,000 ● credit score ≥ 700 
==>
age = int(input("Enter your age : "))
salary = int(input("Enter your salary : "))
creditscore = int(input("Enter your creditscore : "))

if age>=21 and salary >= 25000 and creditscore >= 700:
    print("Eligible to Loan")
else:
    print("Your are not Eligible to loan")



43. Validate login using username AND password.
==>
username = input("Enter Your Username : ")
password = input("Enter Your Password : ")
if username=="admin" and password=="admin123":
    print("Login successfully")
else:
    print("Invalid Username and Password")

44. Check student pass condition: ● All subjects ≥ 40 ● Average ≥ 50
==>
sub1 = float(input("Enter Subject1 , Marks :   "))
sub2 = float(input("Enter Subject2 , Marks :   "))
sub3 = float(input("Enter Subject3 , Marks :   "))
Average  = (sub1+sub2+sub3) / 3
print(Average)

if sub1>=40 and sub2>=40 and sub3>=40 and Average>= 50:
    print("Student is passed")
else:
    print("Fail")

45. Check if a number lies between 10 and 100.
==>

num = float ( input(" Enter a number : "))
if num>10 and num<100:
    print("Number lies between 10 to 100")
else :
    print("Number doesnt lies in between 10 to 100")

46. Check exam eligibility: ● attendance ≥ 75% OR ● medical certificate available
==>
attendance = float(input("Enter your Attendance "))
medicalCertificate = input("Do You have Medical Certificate :  Y/N !  ")
if attendance>= 75 or medicalCertificate == "y":
    print("You are not detained from your Exam")
else :
    print(" you are Detained ")



47. Validate a date using conditions.
==>
day = int(input("Enter the day : "))
month = int(input("Enter the month : "))
year = int(input("Enter the year : "))

if month >= 1 and month <= 12:

    if month == 2:
        
        if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
            
            if day >= 1 and day <= 29:
                print("Valid Date")
            else:
                print("Invalid Date")

        else:
            
            if day >= 1 and day <= 28:
                print("Valid Date")
            else:
                print("Invalid Date")

    elif month == 4 or month == 6 or month == 9 or month == 11:
        
        if day >= 1 and day <= 30:
            print("Valid Date")
        else:
            print("Invalid Date")

    else:
        
        if day >= 1 and day <= 31:
            print("Valid Date")
        else:
            print("Invalid Date")

else:
    print("Invalid Month")

    
48. Check whether an email format is valid.
==>email = input("Enter your Email : ")

if '@' in email and '.' in email:
    if email.index("@")>0 :
        if email.index(".") > email.index("@"):
            print("Email is valid ")
        else:
            print("Email in Invalid")
    else:
        print(" Email is Invalid")
else:
    print("Email is INvalid")


49. Determine insurance eligibility using age, health status, and income.
==>
age = int(input("Enter Your Age "))
Healthstatus = int (input("Enter your Health status "))
income = int(input("Enter your monthly salary "))

if age>=21 and Healthstatus>=40 and income >=29999:
    print("You are Elibile to Take Insurance")
else:
    print("You are not Eligible")

50. Check leap year using complete leap year logic.
==>
year = int(input("Enter Year"))
if year>0:
    if (year%4==0 and year%100!=0) or (year % 400==0):
        print("Leap Year")
    else:
        print("Not Leap year")
else:
    print("year May be in positive")


======================================================================================================
51. Write a Python program to calculate income tax using slabs. 
==>
salary = float(input("Enter your Salary "))
tax = 0
if salary > 0  and   salary<250000:
    print("No Tax")
elif salary >=250000 and salary <= 500000:
    tax =  salary * (95/100)
    print( "5 % Tax   : your salary is  : " , tax)
elif salary >=500000 and salary <= 1000000:
    tax =  salary * 90/100
    print( "10 % Tax   : your salary is  : " , tax)
else:
    tax =  salary * 70/100
    print( "30 % Tax   : your salary is  : " , tax   )


52. Create an ATM withdrawal program with balance checks.
==>
balance = 10000
print("WELCOME ")
password = int(input("Enter Your Pin No : " ))
if password ==1234:
    debit = float(input("Enter Your Amount : "))
    if balance >=0 and debit<=balance:
        print("your Debit Amount is ", debit ,  "and your avalable balance is " ,  balance-debit )
    else:
        print("Your Entered Amount is Too High ! ")
else:
    print("Wrong Pin No !")

    
53. Check promotion eligibility using experience and performance.
==>
experience = float(input("Enter Your Experience : "))
performance = input("Enter Performance (good/excellent) : ").lower()

if experience < 0:
    print("Invalid Input")

elif experience < 2:
    print("No Promotion")

elif experience >= 5 and performance == "excellent":
    print("High Promotion")

elif experience >= 2 and performance == "good":
    print("Promotion")

else:
    print("No Promotion")


54. Implement a grading system using nested if–else. 
==>
marks =  float((input("Enter Your Marks : ")))
if marks>0 and marks<=100:
    if marks<=100 and marks>=90:
        print("A Grade")
    else:
        if marks >=70 and marks<90:
            print("B Grade")
        else:
            if marks>=50 and marks <70:
                print("C Grade")
            else:
                if marks >=40 and marks <50:
                    print("D Grade")
                else:
                    if marks>=33 and marks<40:
                        print(" E grade")
                    else:
                        print(" Fail !")
else:
    print("Invalid Input ")

55. Validate strong password using multiple conditions
==>
print("Too Set your  Strong Password ,  it must contain character a to d and @ and numeric Values(1234) and Symbol(!@#$%^&*) ")

password= input("Enter Your Password ")
if (password in "@" and password in "a , b , c,d") or (password in "1234" or ("!@#$%^&*")):
    print("Set Up Password Succesfully ")
else:
    print("Try Again ")
        



56. Calculate delivery charges based on location and order amount.
==>
print("Welcome to Make Bazar E-Commerce Website")
amount= float (input ("Enter Your Amount : "))
km = int(input ("Enter your Distance here in :  KM "))
if amount<1000 and km <2:
    print("delivery charges 50Rs")
else:
    if (amount>=1000 and amount< 3000) and (km>=2 and km<5):
        print("delivery charges 30Rs")
    elif(amount>=3000 and amount< 10000) and (km>=5 and km<=10):
        print("delivery charges 10Rs")
    elif amount>=10000:
        print("No delivery charges")


57. Determine online exam qualification.
==>
attendance = float(input("Enter Your Attendance Here : ") )
marks = float(input("Enter your Marks Here : "))
if (marks>=33 and marks<=100)  and (attendance >=70 and attendance <=365) :
    print("You are Qualified your online Exam " )
else:
    print("Not Qualified")

58. Create movie ticket pricing logic based on age & show time. 
==>
showtime = int(input("Enter Movie Time : "))
age = int(input("Enter Your Age : "))

if age<18 and (showtime >= 1 and showtime<12)  :
    print("Tax 5% : child : half ticket ")
elif age>=18 and (showtime>=1 and showtime<=12):
    print("Tax 18% : Full Ticket")
elif age>=18 and (showtime>=12 and showtime<=23):
    print("Tax 24% : Night Show")
elif age<18 and (showtime>=12 and showtime<=23):
    print("Tax 18% : child : half ticket ")
else:
    print("Pricing is based on trending")
          

59. Determine bank account type based on balance.
==>
balance =  float(input("Enter Your Balance : "))
if balance<0:
    print("Invalid Balance")
elif balance<1000:
    print("Saving Account")
elif balance>=1000 and balance<10000:
    print("Standard Account")
elif balance>=50000:
    print("Vip Account")
else:
    print("Invalid Input or Account Not Find !")


60. Create a menu-driven program using if–elif–else.
==>
print(" \t \t \t \t=====MENU-DRIVEN=====")
print("\t \t \t \t 1.Addition")
print("\t \t \t \t 2.Substraction")
print("\t \t \t \t 3.Divison")
print("\t \t \t \t 4.Multiplication")

choice =  int(input("Enter Your Choice: "))

container = [1,2,3,4]
if choice in container:
    num1 = float((input ("Enter Your First Number:  ")))
    num2 = float((input ("Enter Your Second Number:  ")))
    if choice==1:
        print("\n\t \tAddition: " , num1 + num2)
    elif choice ==  2:
        print("\n\t \tSubstraction : ", num1 - num2)
    elif choice == 3:
        print("\n\t \tDivison : " ,  num1/num2)
    elif choice ==4:
        print("\n\t \tMultiplication : " , num1 * num2)
    else:
        print("Invalid Choice")
else:
    print("Invalid Choice")
print(" \n\n\t \t \t \t=====End Of Programm=====")
"""


    





    
                 


            
            
        
    



    



        
    


    





















