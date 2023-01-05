class Nameable
  def correct_name
    raise NotImplementedError, "OPS, the #{method} has not been implemented,please add a valid name"
  end
end
