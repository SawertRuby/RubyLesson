module Resource
  def connection(routes)
    if routes.nil?
      puts "No route matches for #{self}"
      return
    end

    loop do
      print 'Choose verb to interact with resources (GET/POST/PUT/DELETE) / q to exit: '
      verb = gets.chomp
      break if verb == 'q'

      action = nil

      if verb == 'GET'
        print 'Choose action (index/show) / q to exit: '
        action = gets.chomp
        break if action == 'q'
          

      
      else
        puts "try again"
        next
      end      


      action.nil? ? routes[verb].call : routes[verb][action].call
    end
  end
end

class PostsController
  extend Resource

  def initialize
    @posts = ["1,2,3,4,5", "Test",42, "Test",75, "Test",34, "Test",123, "Test",]
  end

  def index
    @posts.each_with_index{|e,i| puts "#{i}. #{e}"}
  end

  def show
    puts "Input index of post"
    i = gets.chomp.to_i
    if @posts.length() == 0 
      puts "Posts doesnt exist. Create posts to wiew"
    elsif i>@posts.length()
      puts "This is index does not exist"
      puts "numer of index 0..#{@posts.length()}"
    end 
    puts @posts[i]
  end

  def create
    puts "Input text of post"
    text = gets.chomp
    @posts <<text
    puts "#{@posts.length() -1}. #{@posts.last} "
  end

  def update
    puts "Input index of post"
    i = gets.chomp.to_i
    if @posts.length() == 0 
      puts "Posts doesnt exist. Create posts to update"
    elsif i>@posts.length()
      puts "This is index does not exist"
      puts "numer of index 0..#{@posts.length()}"
    else 
      puts "Input text of post"
      text = gets.chomp
      @posts[i] = text
    end
  end

  def destroy
    puts "Input index of post"
    i = gets.chomp.to_i
    if @posts.length() == 0 
      puts "Posts doesnt exist. Create posts to delete"
    elsif i>@posts.length()
      puts "This is index does not exist"
      puts "numer of index 0..#{@posts.length()}"
    else 
    @posts.delete_at(i)
    end
  end
end

class Router
  def initialize
    @routes = {}
  end

  def init
    resources(PostsController, 'posts')

    loop do
      print 'Choose resource you want to interact (1 - Posts, 2 - Comments, q - Exit): '
      choise = gets.chomp
      if choise == "1"
        PostsController.connection(@routes['posts']) if choise == '1'
      elsif choise == "2"  
        next
      elsif choise == 'q'
        break
      else
        puts "try again"
        next
      end
     
    end

    puts 'Good bye!'
  end

  def resources(klass, keyword)
    controller = klass.new
    @routes[keyword] = {
      'GET' => {
        'index' => controller.method(:index),
        'show' => controller.method(:show)
      },
      'POST' => controller.method(:create),
      'PUT' => controller.method(:update),
      'DELETE' => controller.method(:destroy)
    }
  end
end

router = Router.new

router.init