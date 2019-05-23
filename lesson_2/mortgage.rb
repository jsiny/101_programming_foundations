require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')
LANGUAGE = 'en'

def write(input,lang='en')
  sentence = MESSAGES[LANGUAGE][input]
  puts "==> #{sentence}"
end

def compute_monthly_price(loan, interest, months)
  (loan * (interest / (1 - (1 + interest)**-months))).round(2)
end

def valid_integer?(input)
  /^\d+$/.match(input)
end

def valid_float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

write 'welcome'

loop do
  total_amount = ''
  monthly_interest_rate = ''
  duration_in_months = ''

  loop do
    write'prompt_loan' 
    total_amount = gets.chomp
    break total_amount.to_i if valid_integer?(total_amount)
    write 'error'
  end

  loop do
    write 'prompt_interest'
    yearly_interest_rate = gets.chomp
    if valid_float?(yearly_interest_rate)
      monthly_interest_rate = yearly_interest_rate.to_f / 100 / 12
      break
    else
      write 'error'
    end
  end

  loop do
    write 'prompt_duration'
    duration_in_years = gets.chomp
    if valid_integer?(duration_in_years)
      duration_in_months = duration_in_years.to_i * 12
      break
    else
      write 'error'
    end
  end

  monthly_price = compute_monthly_price(total_amount.to_i,
                                        monthly_interest_rate,
                                        duration_in_months)
  puts MESSAGES[LANGUAGE]['result1'] + monthly_price.to_s

  total_paid = (monthly_price * duration_in_months).round(2)
  total_cost = (total_paid - total_amount.to_i).round(2)
  puts MESSAGES[LANGUAGE]['result2'] + total_cost.to_s

  write 'again'
  answer = gets.chomp
  break unless answer.start_with?('y')
end

write 'thanks'
