"""
1. Lambda Basics  
o Write a lambda function to add two numbers.  
      add = lambda a , b :  a + b
      print(add(2,3))
      print(add(200,4))


o Write a lambda function to check if a number is even or odd. 
      check = lambda num : "Even " if num%2==0 else "Odd"
      print(check(20))

2. Using map()  
o Given a list of integers, use map() to create a new list with each number squared.  
      li = [2,3,4,5]
      square = lambda num : num**2
      x= list(map(square , li))
      print(x)

o Convert a list of strings to uppercase using map().  
      li  =["aakash", "tyagi" ]
      upperr = lambda li : li.upper()
      print(list(map(upperr , li)))


3. Using filter()  
o Given a list of numbers, filter out only even numbers.
      a = [1,2,3,4,4,5,6,8,9,10]
      x =  lambda num :  num%2==0 
      print(list(filter(x , a )))

o Filter words that have length greater than 5 from a list of strings. 
      li = ["aakash" , "tyagi", "deepak" , "sandeep","lavi","diya"]
      x = lambda z : len(z)> 5
      print(list(filter(x,li)))


4. Using reduce()  
o Find the sum of all elements in a list using reduce().  
      from functools import reduce
      li = [1,2,3,4,5]
      x = lambda a , b  : a + b
      print(reduce(x , li))


o Find the product of all numbers in a list.  
      from functools import reduce
      li  = [2 ,3, 4,5,6] 
      x = lambda a , b : a *b
      print(reduce(x ,li))


5. Combination of lambda + map  
o Given a list of numbers, return a list where each number is multiplied by 10.
      li = [10, 20 , 24 , 27 , 50 , 100 , 77 ]
      x =  lambda num : num * 10
      print(list(map(x , li)))

6. Combination of lambda + filter  
o From a list of numbers, filter out all numbers divisible by 3.  
      li = [10, 21 , 24 , 27 , 50 , 100 , 77 ]
      x = lambda num : num %3==0
      print(list(filter(x , li)))

7. Using reduce() for maximum  
o Find the maximum number in a list using reduce().  
      from functools import reduce
      li = [10, 21 , 24 , 27 , 50 , 100 ,1019, 77 ]
      x = lambda a , b : a if a>b else b
      print(reduce(x , li))

8. String Manipulation  
o Given a list of names, use map() to return names with their first letter capitalized.  
      li = ["aakash" , "tyagi" , "india", "australia" , "london"]
      x = lambda a : a.capitalize()
      print(list(map(x , li)))

9. Filter Palindromes  
o Given a list of strings, filter out only palindrome words using filter().  
      li = ["madam" , "silent" , "121" , "civic"] 
      x= lambda a : a == a[::-1]
      print(list(filter(x , li)))

"""

print(2+2)






