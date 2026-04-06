# class Car:
#     def start(self):
#         print("Car starting")

# class BMW(Car):
#     def start(self):
#         print("BMW starts with push button")

# #obj = BMW()
# #obj.start()
# self = BMW()
# self.start()

# class Bank:
#     def __init__(self, account_number, balance):
#         self.account_number = account_number
#         self.balance = balance
    
#     def withdrawal(self, amount):
#         if amount <= self.balance:
#             self.balance -= amount
#             print(f"Withdrawal successful! New balance: {self.balance}")
#         else:
#             print(f"Insufficient funds for withdrawal Available balance is:- {self.balance}")

# # Example usage
# account = Bank(account_number=12345, balance=1000)
# account.withdrawal(10000)
# import math
# print(int(eval(input("enter: "))))

#
# import boto3
# ec2 = boto3.client('ec2')
# print(ec2.describe_instances())
# s3 = boto3.client('s3')
# print(s3.list_buckets())

# n = int(input("Enter a number:"))
# rev = 0
# while n > 0:
#     rev = rev*10 + n%10
#     n //= 10
# print(rev)

n = input("Enter a number ddddd:")
x = n[::-1]
print(x)
if n == x:
    print("palindrome")
else:
    print("not palindrome")
