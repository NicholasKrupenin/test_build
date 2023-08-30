def dictionary_string?(str, dict)
  search_for = Regexp.union(dict)
  str.scan(search_for).any?
end

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
