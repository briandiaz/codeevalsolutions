require 'prime'
sum = 0
primos = Prime.take(1000)
primos.each { |n| sum += n }
print "#{sum}"