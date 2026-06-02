"""
Python Programming Questions - LIST Basic Level
1. Write a Python program to create a list of integers and print its elements.
    li = [1 ,2 , "Aakash" , True , 22.8]
    print(li)

2. Write a program to find the sum and average of all elements in a list.
    li = [1 ,2 , 4, 5,10]
    x = sum(li)
    print(x)
    print(x//len(li))


3. Write a program to find the largest and smallest element in a list.
    li = [1, 2, 3, 4, 5]
    print(min(li))
    print(max(li))
    
    
4. Write a Python program to count the number of elements in a list without using len().
    li = [1,2,3,1,31,2]
    count = 0
    for a in li:
        count+=1
    print(count)

5. Write a program to reverse a list without using built-in functions.
    li = [1,2,3,4,5]
    li2 = []
    for a in li:
        li2 = [a] + li2
    print(li2)
    
    or
    li = [1,2,3,4,5]
    li2 = []
    for a in range(len(li) , 0 , -1):
        li2.append(a)
    print(li2)
    
6. Write a program to check if an element exists in a list.
    num = 10
    li = [1,2,3,4,5,6]
    if num in li:
        print("valid")
    else:
        print("Invalid")

7. Write a Python program to remove duplicate elements from a list.
    li =[ 1 , 2, 3, 4,5,  6,7 , 22,3 , 4,2] 
    print(list(set(li)))

                    OR
    li = [1,2,4,5,4,3,2,1,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1]
    result = [] 
    for a in li:
        if a not in result:
            result.append(a)
    print(result)

8. Write a program to sort a list in ascending and descending order.
    li =[ 1 , 2, 3, 4,5,  6,7 , 22,3 , 4,2] 
    print(sorted(li))
    print(sorted(li,reverse=True))
    print(li)
    
=================================================================================================================

Intermediate Level 

9. Write a program to merge two lists and remove duplicates. 
    li1 = [1,2,3,4,5,6]
    li2 = [4,5,6,7,8,9]

    li1.extend(li2)
    print(li1)
    result = []
    for a in li1:
        if a not in result:
            result.append(a)
    print(result)

10. Write a program to find common elements between two lists. 
    li1 = [1,2,3,4,5,6]
    li2 = [4,5,6,7,8,9]
    result = []

    for a in li1: 
        if a  in li2:
            result.append(a)
    print(result)

11. Write a program to split a list into even and odd numbers. 
    li = [9,8,7,6,5,4,3,2,1] 
    even = []
    odd= []
    for a in li:
        if a%2==0:
            even.append(a)
        else:
            odd.append(a)
    print(even)
    print(odd)
    
12. Write a program to rotate a list by n positions. 


13. Write a Python program to find the second largest number in a list. 


14. Write a program to flatten a nested list. 


15. Write a program to count frequency of each element in a list.

 
16. Write a program to replace all negative numbers with zero in a list. 

 hello line 
"""

        



li = [1, 2, 3, 4, 5]
num = 2
result = 1
for a in li:
    if a > result:
        result = a
    pass
    if a < result:
            result = a
print(result)

        


        
    



        





