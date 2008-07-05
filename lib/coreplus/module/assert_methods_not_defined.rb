class MethodRedefinitionError < StandardError
  def initialize( klass, method )
    super( "#{klass} already defines method ##{method}" )
  end
end

if Module.method_defined?( :assert_methods_not_defined )
  raise "Module already defines method #assert_methods_not_defined!!"
end

class Module
  
  def assert_methods_not_defined( *methods_to_check )
    methods_to_check.each do |method|
      raise MethodRedefinitionError.new( self.name, method ) if self.method_defined?( method )
    end
  end
  
end