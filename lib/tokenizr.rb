module Tokenizr
  INDEX = 'abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  LENGTH = 15

  def self.encode(number)
    number = lengthen(number).to_i
    ret = ''

    start = (Math.log(number) / Math.log(INDEX.length).to_f).floor
    start.downto(0).each do |i|
      ret += INDEX[((number / Tokenizr.bcpow(INDEX.length, i).to_f).floor % INDEX.length)]
    end

    ret.reverse
  end

  def self.decode(string)
    str = string.reverse
    ret = 0

    (0...str.length).each do |i|
      ret += INDEX.index(str[i]) * (Tokenizr.bcpow(INDEX.length, (str.length - 1) - i))
    end

    ret.to_s[1..-1].to_i
  end


  private

    def self.bcpow(a, b)
      (a.to_f ** b.to_i).floor
    end

    def self.lengthen(number)
      str = number.to_s
      while str.length < LENGTH
        str = "0" + str
      end

      ("1" + str).to_i
    end

end