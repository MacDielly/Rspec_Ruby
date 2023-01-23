def add(number1, number2)
    return (number1 + number2)
end

def subtract(number1, number2)
    return (number1 - number2)
end

def sum(num)
    return num.inject(0) {|i, j| i + j} #i (accumulateur) + j (élément à ajouter)
end

def multiply(number1, number2)
    return number1 * number2
end

def power(number1, number2)
    return number1**number2
end

def factorial(n)
    return (1..n).inject(:*) || 1
end