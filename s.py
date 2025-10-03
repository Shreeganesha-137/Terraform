# a = "amma"
# c= a[::-1]
# if a==c:
#     print("palindrome")
# print(c)

# a =[1,4,3,2,2,1,4]
# c=list(set(a))
# a.sort()
# print(a)
# print(c)

# nums = [12, 4, 56, 23, 9, 4, 56]
# asc = sorted(nums)
# des =sorted(nums,reverse=True)
# print(asc)
# print(des)
# nums.sort()
# print(nums)
# print(reversed(nums))

# f=list(set(des))
# d=list(reversed(f))
# print(list(d))

# print((d[1]))

# arr = [10, 25, 8, 30, 25, 18]
# arr.sort()

# arr = list(set(arr))
# d=arr[::-1]
# print(d)
# print(arr)
# print(arr[1])
# print(d[1])
# print(d)

# arr = [10, 25, 8, 30, 25, 18]
# b= sorted(set(arr),reverse=True) [1]
# print(b)

# arr = [10, 25, 8, 30, 25, 18]
# unique = set(arr)
# unique.remove(max(unique))
# print("Second largest number:", max(unique))

# arr = [10, 25, 8, 30, 25, 18]

# first = second = float('-inf')

# for num in arr:
#     if num > first:
#         second = first
#         first = num
#     elif first > num > second:
#         second = num

# print("Second largest number:", first)


# arr = [10, 25, 8, 30, 25, 18]
# arr.sort()
# a=arr[::-1]
# print(a[2])

# # Unique + sort in descending order
# second_largest = sorted(set(arr), reverse=True)[1]
# print("Second largest number:", second_largest)

# def divide(a, b):
#     # if b == 0:
#     #     return "Error: Division by zero"
    
#     quotient = 0
#     sign = -1 if (a < 0) ^ (b < 0) else 1
    
#     a, b = abs(a), abs(b)
    
#     while a >= b:
#         a -= b
#         quotient += 1
    
#     return sign * quotient, a   # quotient, remainder

# q, r = divide(300, 5)
# print("Quotient:", q, "Remainder:", r)



# def multiply(x, y):
#     result = 0
#     for _ in range(abs(y)):
#         result += x
#     return result if y >= 0 else -result


def multi(a, b):
    sign = -1 if (a < 0) ^ (b < 0) else 1
    a, b = abs(a), abs(b)

    result = 0
    for _ in range(b):
        result = result + a

    return sign * result

def divi(a, b):
    sign = -1 if (a < 0) ^ (b < 0) else 1
    a, b = abs(a), abs(b)

    qoutient = 0
    while a>=b:
        a = a - b
        qoutient +=1
    return sign * qoutient, a  # quotient, remainder

print(multi(3, 4))  # Output: 12
print(divi(10, 3))  # Output: (3, 1)

    


