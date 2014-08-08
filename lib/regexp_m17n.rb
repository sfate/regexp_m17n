module RegexpM17N
  def self.non_empty?(str)
    if str.encoding.dummy?
      enc = Encoding::UTF_8
      str = str.force_encoding(enc)
    elsif str.encoding.ascii_compatible?
      enc = Encoding::US_ASCII
    else
      enc = str.encoding
    end
    str.match(Regexp.new('^.+$'.encode(enc), 0))
  end
end
