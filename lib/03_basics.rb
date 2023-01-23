def who_is_bigger(a, b, c)
    if a.nil? or b.nil? or c.nil?
        return "nil detected"
    else
        "nil is not detected"
    if a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    else
        return "c is bigger"
    end
end
end

def reverse_upcase_noLTA(strings)
    return strings.reverse.upcase.delete!("LTAlta")
end

def array_42(array)
    return array.include? 42
end

def magic_array(array)
    return array.flatten.sort.map{|i| i * 2}.uniq.delete_if{|i| i % 3 == 0}
end