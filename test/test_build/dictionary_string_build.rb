# Read https://www.geeksforgeeks.org/word-break-problem-dp-32/

def dictionary_string?(s, dictionary)
  (1..(s.length)).each do |i|
    prefix = s[0...i]
    if dictionary.include?(prefix)
      suffix = s[i..]
      return true if suffix.empty? || dictionary_string?(suffix, dictionary)
    end
  end
  false
end

### Old verion
#
# def dictionary_string?(str, dict)
#   search_for = Regexp.union(dict)
#   str.scan(search_for).any?
# end

### if you want to output words

# def dictionary_string?(str, dict)
#   search_for = Regexp.union(dict)
#   stack = str.scan(search_for)
#   if stack.any?
#     p stack.join("\b")
#     true
#   else
#     false
#   end
# end
