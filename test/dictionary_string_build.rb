def dictionary_string?(str, dict)
  search_for = Regexp.union(dict)
  str.scan(search_for).any?
end
