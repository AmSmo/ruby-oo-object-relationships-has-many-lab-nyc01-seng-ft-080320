class Post
    attr_accessor :author, :title

    @@all  = []

    def initialize(post)
        @@all << self
        @title = post
    end

    def self.all
        @@all 
    end

    def author_name
        if @author == nil
            return nil
        else
            return @author.name
        end
        
    end

end