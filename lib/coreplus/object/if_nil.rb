#
# Extension syntax to write
#
# expr.if_not_nil { |e| do something with expr unless it's nil }
#
# Found in an article by François Beausoleil
# http://blog.teksol.info/2007/11/23/a-little-smalltalk-in-ruby-if_nil-and-if_not_nil
#
# Originally from Bob Huntchison
# http://recursive.ca/hutch/2007/11/22/a-little-unnecessary-smalltalk-envy/
# 
class Object
  assert_methods_not_defined( :if_nil, :if_not_nil )
  
  # yield self when it is non nil.
  def if_not_nil
    raise "You must supply a block to if_not_nil?" unless block_given?
    yield self
  end

	# Not nil so do nothing
  def if_nil
    self
  end
end

class NilClass
  # Deliberately permitting redefinition of these methods here
  
	# nil, so do nothing
  def if_not_nil
    self
  end

  # yield to the block if self is nil
  def if_nil
    raise "You must supply a block to if_nil?" unless block_given?
    yield self # Okay it's nil but let's keep the arity the same
  end
end
