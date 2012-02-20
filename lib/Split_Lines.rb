require 'Split_Lines/version'

class Split_Lines
  Separator = %r![\r\n]+!
end # === class Split_Lines

def Split_Lines str
  str.strip.split( Split_Lines::Separator ).reject { |str|
    str.strip.empty?
  }
end
