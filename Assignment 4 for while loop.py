"""
1. Write a program to print numbers from 1 to 100. 
==>
for a in range(1,100+1,1):
    print(a)

2. Write a program to print all even numbers between 1 and 50. 
==>
for a in range (1 , 51):
    if a%2==0:
        print(a)

3. Write a program to print the sum of first n natural numbers.
==>
result =  0
for a in  range (0, 5):
    result= result+a
print(result)

4. Write a program to print the multiplication table of a given number.
==>
num = int(input("Enter Number "))
result = 0
for a in range(1, 11):
    result = num *a
    print(num , "*", a , "= ", result)

5. Write a program to print all elements of a list using a for loop.
==>
list = [1,2,3,4,5,6,78,89]
for a in list:
    print(a)

6. Write a program to count the number of vowels in a string.
==>
str = input("Enter Your Text : ")
res= "aeiouAEIOU"
count = 0
for a in str:
    if a in res:
        print(a)
        count = count+1
print("Total Count = " , count)

7. Write a program to find the largest number in a list.
==>
list = [1,2,4,2,68,3,6]
for a in list:
    continue
print(max(list))


or

list = [1, 2,3,4,56,8,9]
largest = list[0]
for a in list:
    if a > largest:
        largest = a
print(largest)

8. Write a program to print all prime numbers between 1 and 100.
==>
count = 0
n =  int(input("Enter Number"))
if n<100:
    for a in range(1, 101):
        if n%a==0:
            count = count+1
    if count==2:
        print("Prime")
    else:
        print("Not Prime")
else:
    print("Invalid Input")

or


n = int(input("Enter Number: "))
for a in range(2, n):
    if n % a == 0:
        print("Not Prime")
        break
else:
    print("Prime")


9. Write a program to calculate the factorial of a number using a for loop. 
==>
num = int(input("Enter A number"))
fact = 1
for a in range(1, num+1):
    fact = fact * a                                                                                                               
print(fact)

10. Write a program to print the reverse of a string using a for loop.
==>str = "hello"
reverse = ""
for a in str:
   reverse = a + reverse
print(reverse)

============================================================================================================
WHILE Loop – Programming Questions

11. Write a program to print numbers from 1 to 50 using a while loop.
==>
a= 1
while a<51:
    print(a)
    a = a+1

12. Write a program to print all odd numbers between 1 and 50.
==>
a = 1
while a<51:
    if a%2==0:
        print(a)
    else:
        print(a)
    a=a+1

    
13. Write a program to calculate the sum of digits of a number.
==>
n = int(input("Enter Number"))
sum = 0
a =1
while a<n+1:
    sum = sum+a
    a+=1
print(sum)

14. Write a program to reverse a number using a while loop.

"""

    
    

    














    
