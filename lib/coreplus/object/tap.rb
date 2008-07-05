class Object
  assert_methods_not_defined( :tap )
  
  def tap
    yield self
    self
  end
  
end
