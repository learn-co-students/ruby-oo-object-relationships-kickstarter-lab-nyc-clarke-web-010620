class Project 
    attr_reader :title, :backers
    def initialize(title)
        @title = title 
        @backers = []
    end 

    def add_backer(backer)
        pb = ProjectBacker.new(self, backer)
        @backers << pb.backer 
    end 
end 