"""
1. Write a function to print "Hello World".  
def Hello():
  print("Hello World")
Hello()

2. Create a function that takes a number and returns its square.  
val = int(input("Enter a number : "))
def Square(num):
  print(num**2)
Square(val)

3. Write a function to check whether a number is even or odd.
User_Input = int(input("Enter A Number"))

def Check(num):
  if num%2==0:
    print("Number is Even ")
  else:
    print("Number is Odd ")

Check(User_Input)


4. Create a function that returns the sum of two numbers.  
A= int(input("Enter A Number"))
B = int(input("Enter B Number"))

def Sum(A , B):
  return A+B
print(Sum(A,B))


5. Write a function to find the maximum of three numbers. 
A= int(input("Enter A Number"))
B = int(input("Enter B Number"))
C = int(input("Enter C Number"))

def max(A , B , C):
  if A>B and A>C:
    return "A is Greater : "
  elif B>C and B>A:
    return "B is Greater : "
  else:
    return "C is Greater : "

result = max(A,B,C)
print(result)

6. Create a function that takes a string and returns it in uppercase.
str =  input("Enter Text : ")
def uppercase(str):
  return str.upper()
print(uppercase(str))  

7. Write a function to calculate the factorial of a number. 
num = int(input("Enter Number "))

def factorial(num): 
  count = 1
  for i in range(5 ,0 , -1):
    print(i)
    count= count*i
  print(count) 

factorial(num)


8. Create a function that checks if a number is positive, negative, or zero. 
num = int(input("Enter Number "))

def function(num):
  if num>0:
    print("Positve")
  elif num==0:
    print("Zero")
  else:
    print("Negative")

function(num)


9. Write a function to count the number of vowels in a string. 
str = input("Enter Text")
vowels = "aeiouAEIOU"

def checkvowels(str):
  count = 0     
  for i in str:
    if i in vowels:
      count =count+1
  print(count)
  
checkvowels(str)

10. Create a function that returns the length of a list (without using len()).  
list = (1,2,3,4,5,6,7,8,9)

def findlen(list):
  count = 0
  for i in list:
    count =count+1
  print(count)

findlen(list)

11. Write a function to check whether a number is prime.  
num = int(input("Enter Number"))
def check(num):
  if num>1:
    for i in range(2 , num):
      if num%i==0:
        print("Not Prime")
        break
    else:
      print("Prime" )
  else:
    print("Not Prime")

check(num)

12. Create a function that returns the reverse of a string.  
str =  "Python"
def reverse(str):
  print(str[::-1])

reverse(str)


or 

str =  "Python"

def reverse(str):
  res = ""
  for i in str:
    res = i + res
  print(res)

reverse(str)


13. Write a function to find the sum of all elements in a list.  

li = (1,2,3,4,5,6,7,8,9)
def sum1(li):
  return sum(li)
print(sum1(li))

or 
li = (1,2,3,4,5,6,7,8,9)

def sum1(li):
  count = 0
  for i in li:
    count = count+i
  print(count)
sum1(li)

14. Create a function that returns the second largest number in a list.  
a = int(input("Enter A number "))
b = int(input("Enter B number "))
c = int(input("Enter C number "))

def check(a,b,c):
  if a>b and a<c:
    print("A is second Highest")
  elif b>a and b<c:
    print("B is Second Highest")
  else:
    print("C is Second Highest")

check(a,b,c)


15. Write a function to remove duplicates from a list. 
li = (1,2,3,2,12,4,2,1,4,5,)

def removeduplicacy():
  unique=[]
  duplicate=[]
  for i in li:
    if i not in unique:
      unique.append(i)
    elif i in unique:
      duplicate.append(i)
  print(unique)
  print(duplicate)
removeduplicacy()


16. Create a function that checks if a string is a palindrome.  
text = input("Enter  Text ")

def palindrome(text):
  if text == text[::-1]:
    print("Palindrome")
  else:
    print("Not Palindrome")

palindrome(text)

17. Write a function that takes a list and returns only even numbers. 
li= [1,3,2,3,4,3,7,5,4,8,2,12,14]

def check(a):
  count=[]
  for i in a:
    if i%2==0:
      count.append(i)
  print(count)
check(li)

18. Create a function to count frequency of each element in a list. 
li = [1,2,3,2,1,3,4,2,1,4,5,6,3,7,9,0,6,4,6,7,9]
num=int(input("Enter Number 1 to 9 : "))
def countfrequency(num):
  count = 0
  for i in li:
    if i ==num:
      count = count+1
  print(count)

countfrequency(num)



19. Write a function that merges two lists into one.  
list1 = [1,2,3,4,5]
list2 = [6,7,8,9,10]

def merge(a , b):
   a.extend(b)
   return a

print(merge(list1 , list2))

20. Create a function to calculate simple interest. 
p = float(input("Enter Principal Amount "))
r = float(input("Enter Rate "))
t = float(input("Enter Time "))

def interest(a , b , c):
  si = (p * r * t) / 100
  print(si)

interest(p , r , t)


21. Write a function using recursion to find factorial.
num = 5
def factorial(n):
  if n==1:
    return 1
  else:
    return n* factorial(n-1)
  
print (factorial(num))

22. Create a recursive function for Fibonacci series. 
num = 2
def fabonacci(n):
  if n==0:
    return 0
  elif n == 1:
    return 1
  else:
    return fabonacci(n-1)+fabonacci(n-2)

for i in range(num):
  print(fabonacci(i))

23. Write a function that accepts *args and returns their sum.  
def add(*a):
  return (sum(a))

print(add(21, 21))

24. Write a function that accepts **kwargs and prints key-value pairs.  
def check(**a):
  return a

print(check(Name = "Aakash" , Age =21))

25. Create a function decorator that prints "Function Started" and "Function Ended
def func(a):
  print("Function Started ")
  if a%2==0:
    print("Even")
  else:
    print("Odd")
  print("Function Ended")
    
func(12)

26. Write a function that returns another function (closure concept). 
def hello():
  print("hello world")

def output():
  return hello

x = output()
x()

27. Create a function to sort a list without using built-in sort().  

28. Write a function that finds common elements in two lists.
li = [1,2,3,4,5,6]
li2 = [4,5,6,7,8,9,]

def check(li ,li2):
  li3 = []
  for i in li :
    if i in li2:
      li3.append(i)
  print(li3)

check(li , li2)


29. Create a function to flatten a nested list.  
li =[1,2,[3,4] ,[5,6] ]

def nestedlist(li):
  result = []
  for i in li:
    if type(i) == list:
      result = result + i
    else:
      result.append(i)
  print(result)

nestedlist(li)


30. Write a function that validates an email format.  
str = input("Enter Email")


def email(str):
  if str.endswith("@gmail.com"):
    print("Valid Email")
  else:
    print("Invalid Formate")

email(str)


31. Write a function to implement binary search.  

33. Write a function to check anagram strings.  
str =  "silent"
str2 = "listen"

def angram(a , b):
  if sorted(a) ==  sorted(b):
    print("Anagram string ")
  else:
    print("Not Anagram String")
  
angram (str , str2)


35. Write a function to find the first non-repeating character.  
str = "Aakash"
def check(str):
  for a in str.lower():
   if str.count(a) ==1:
     print(a)
     break
check(str)

36. Create a function to compress a string (e.g., "aaabb" → "a3b2").  
text  = "aaabb"

def check(text):
  count = 0
  li = []
  for a in text.lower():
    if text.count(a)>1:
      count = text.count(a)
      if a not in li:
        li = li + a + str(count)  # convert into string ==> str(count)
  print(li)

check(text)



37. Write a function to implement LRU logic (basic idea).


38. Create a function to find missing number in a list
==> if we find only 1  number 
li = [1 ,2,3,4 ,5, 7]

def check():
  actual_sum = sum(li)
  n = len(li)+1
  expected_sum =  n * (n+1) // 2
  res = expected_sum - actual_sum
  print(res)

check()
  

// another Example    (BEST PRACTICE for any Number)
li  = [1 ,2 , 5 , 6,9,16] 
find = []

def check():
  for a in range(1,  max(li)+1):
    if a not in li:
      find.append(a)
  print(find)
    
check()


39. Write a function to group words by anagrams.  

40. Create a function to implement your own map() function.
li = [1, 2,3,4,5]

def square ( num):
  print(num * num)  ==> here only print

def map(func, b):
  res=[]
  for x in b:
    res.append(func(x) )
  return res
map(square , li)   ==> only call because square is not returning the value  its only print 


or 


li = [1, 2,3,4,5]

def square ( num):
  return num * num   ==> yha square in return kiya hai print n karke 

def map(func, b):
  res=[]
  for x in b:
    res.append(func(x) )
  return res


print(map(square , li))  ==>ans is in list because it return res 
"""































