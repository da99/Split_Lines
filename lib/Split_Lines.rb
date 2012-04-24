require 'Split_Lines/version'

class Split_Lines
  Separator = %r![\r\n]+!
end # === class Split_Lines

def Split_Lines str
  str.split( Split_Lines::Separator ).map { |str|
    s = str.strip
    next if s.empty?
    s
  }.compact
end
