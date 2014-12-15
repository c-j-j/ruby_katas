module TestModule
  module EmbeddedModule
    class TestClass
      include Enumerable

      def each
        yield 'a'
        yield 'b'
        yield 'c'
      end
    end
  end
end

class SubClass < TestModule::EmbeddedModule::TestClass

end

test_class = SubClass.new

test_class.each { |x| puts x }

