def hi_by(arg)
  arg.map do |i|
    if (i%3).zero? && (i%5).zero?
      "HiBy"
    elsif (i%5).zero?
      "By"
    elsif (i%3).zero?
      "Hi"
    else
      i
     end
  end.join
end
