class Author

    attr_accessor :name, :posts

    def initialize(name)
        @name = name

    end

    def add_post(post)
        self.posts << post
        post.author = self
    end

    def posts
        Post.all.select { |ele| ele.author == self}
    end

    def add_post_by_title(post_title)
        added = Post.new(post_title)
        added.author = self
    end

    def self.post_count
        Post.all.count
    end


    
end
