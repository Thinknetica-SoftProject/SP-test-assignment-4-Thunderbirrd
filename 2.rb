## Задача №2:
#
# Ганс Грубер в это время пытается намайнить биткоины - чтобы сделать это ему нужно найти MD5 хэши,
# которые начинаются как минимум с 5 нулей.
# Значение, хэш которого нужно посчитать - это инпут (пользовательский ввод), за которым следует положительное число (1, 2, 3 итд).
#
# Например, для инпута abcdef результатом будет число 609043, потому что MD5 хэш для abcdef609043 начинается с 5 нулей (000001dbbfa...)
# и это минимальное такое число.
#
# Помогите Гансу найти это число.
#
# Требования к решению:
# - Инпут вводится пользователем (получение данных в коде через команду gets)
# - Результат (число) выводится через puts
#
#
## Решение:

require 'digest'
inp = gets.chomp
number = 1
hash = Digest::MD5.new

while true
    hash.reset
    h = inp + number.to_s
    hash.update h
    d = hash.hexdigest
    if d.start_with?("00000")
        puts number
        break
    end
    number += 1
end

