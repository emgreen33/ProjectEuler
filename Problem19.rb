# Problem 19
# You are given the following information, but you may 
# prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September, April, June, November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.

# A leap year occurs on any year evenly divisible by 4, 
# but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during 
# the twentieth century (1 Jan 1901 to 31 Dec 2000)?



year = 1901
month = 0
day_of_the_month = 1
day_of_the_week = 3
is_leap_year = false
days_in_the_months = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]
days_in_this_month = 31 

number_of_sundays = 0

while ( year < 2001 )
   if (day_of_the_week == 1) && (day_of_the_month == 1)
      number_of_sundays += 1
      puts "Year: " + year.to_s + " Month: " + (month + 1).to_s + " Day of the month: " + day_of_the_month.to_s + " Day of the week: " + day_of_the_week.to_s
   end

   day_of_the_month += 1

   if day_of_the_month > days_in_this_month
      month += 1
      day_of_the_month = 1
      
      if month != 12
         days_in_this_month = days_in_the_months[ month ]
      end

      if (month == 1) && is_leap_year
         days_in_this_month += 1         
      end
   end

   if month == 12
      year += 1      
      month = 0
      days_in_this_month = days_in_the_months[ month ]

      if (year % 4) == 0
         if (year % 100) != 0
            is_leap_year = true
         else
            if (year % 400) == 0
               is_leap_year = true
            else
               is_leap_year = false
            end
         end
      else
         is_leap_year = false
      end
   end

   day_of_the_week += 1

   if day_of_the_week == 8
      day_of_the_week = 1
   end
end

puts "The number of Sundays is: " + number_of_sundays.to_s

