# Build a mortgage calculator.

# You'll need three pieces of information:
# - the loan amount
# - the annual percentage rate (APR)
# - the loan duration (in years)

# From the above, you'll need to calculate the following two things:
# - the monthly interest rate
# - the loan duration in months

# m = p * ( j / (1 - (1+j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly intereste rate
# n = loan duration in months

# inputs:
# - the loan amount
#   > positive integer
# - the APR
#   > should be stored as a decimal (3 % => 0.03)
#   > should be converted into a monthly interest rate
# - the loan duration
#   > should be converted in the loan duration in months

# outputs:
# - the monthly interest rate
#   > stored as a decimal (0.012)
# - the loan duration in months
# - the monthly loan payment
# - (the total cost of the mortgage)

# Clarifications:
# - What if the loan duration is 5 years and 3 months? Do I assume every loan
# duration is in years only? => I'll assume it is in full years only
# - Do I need to validate the inputs given (nature & non-null)? => I'll assume
# I have to
# - Can I assume that monthly interest rate = annual rate / 12 ? It's not true
# but it's much simpler.

# Example:
# - Loan amount = 150 000
# - APR = 1,5 %
# - Loan duration = 15 years
# ---------------------------
# - Monthly interest rate = 0.125 %
# - Loan duration = 180 months
# - Monthly loan payment = 931.11
# - Total cost = 17 600.62

# Algorithm:
# - Prompts the user for a total loan amount, the APR and the loan duration,
# and store them as three variables
# - Computes the monthly interest rate by dividing by 12 the APR
# - Computes the loan duration in months by multiplying the yearly duration by
# 12
# - Computes the monthly payment through the formula
# - Computes the total cost by substracting the total payments and the loan 
# amount

def write(input)
  puts "==> #{input}"
end

monthly_price = ''

def compute_monthly_price(loan, interest, months)
  (loan * (interest / (1 - (1 + interest)**(-months)))).round(2)
end

write "Welcome to the Mortgage Calculator!"

write "What is your total loan amount?"
total_amount = gets.to_i

write "What is your annual percentage rate (APR)? (in %)"
yearly_interest_rate = gets.to_f / 100
monthly_interest_rate = yearly_interest_rate / 12

write "What is your loan duration (in years)?"
duration_in_years = gets.to_i
duration_in_months = duration_in_years * 12

monthly_price = compute_monthly_price(total_amount, monthly_interest_rate, duration_in_months)
write "The monthly price is #{monthly_price}"

total_paid = (monthly_price * duration_in_months).round(2)
total_cost = (total_paid - total_amount).round(2)
write "The total cost of this loan is #{total_cost}."
