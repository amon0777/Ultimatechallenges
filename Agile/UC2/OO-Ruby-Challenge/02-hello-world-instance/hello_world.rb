class HelloWorld
    def initialize(name)
      @name = name
    end
  
    def hello(greet_name = 'World')
      "Hello, #{greet_name}. My name is #{@name}!"
    end
  end
  