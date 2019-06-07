class Comment

    attr_accessor :message, :photo, :user

    @@all = []
    
    def initialize(message, photo, user)
        @message = message
        @user = user
        @photo = photo
        @@all << self
    end

    def self.all
        @@all
    end

end