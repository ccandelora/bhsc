# Ruby String Class Extension
class String

	# Remove the select character from the front and back of the string
  def rchomp(sep = $/)
    self.start_with?(sep) ? self[sep.size..-1] : self
  end
end