def base10to16 (number) #future update: allow conversion of base-10 floats
  a = (number > 0) ? 1 : -1
  number = (number > 0) ? number : -number
  power = 0
  hexnumber = []
  conversionarray = ["A","B","C","D","E","F"]
  powercounter = (number.to_f / (16 ** power)) / 16

  while (powercounter > 1) do
    power += 1
    powercounter = (number.to_f / (16 ** power)) / 16
  end
  puts "Highest power: #{power}"


  while (power >= 0) do
    hexdigit = (number.to_f / 16 ** power).floor
    number = number - (16 ** power) * hexdigit
    hexdigit = (hexdigit > 9) ? conversionarray[hexdigit - 10] : hexdigit
    hexnumber.push(hexdigit)
    power -= 1
  end

  hexnumber = (a == -1) ? hexnumber.unshift("-") : hexnumber
  hexnumber = hexnumber.join('')
  return hexnumber

end
