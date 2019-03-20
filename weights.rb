

def order_weight(string)
    print string.split.map(&:to_i)
end

order_weight("56 65 74 100 99 68 86 180 90")
