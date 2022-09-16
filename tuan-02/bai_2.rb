# bai 2
a = 3
b = 4
c = 5

def isTriangle(a = 0, b = 0, c = 0)
    if a == 0 || b == 0 || c == 0
        return false
    end
    if a + b <= c
        return false
    end
    if a + c <= b
        return false
    end
    if b + c <= a
        return false
    end
    return true
end

check = isTriangle(a,b,c)

if check
    p = (a + b + c) / 2.to_f
    perimeter = a + b + c
    area = Math.sqrt(p * (p - a) * (p - b) * (p - c))
    print "Perimeter: ", perimeter, "\n"
    print "Area: ", area
end


