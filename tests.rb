title = 'What are you doing?'

def strip_it_off(element)
  element.gsub!(' ', '+')
end

puts strip_it_off(title)
