class Project
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select{|project_backer| project_backer.project == self}
        project_backer.map{|project_backer| project_backer.backer}
    end

end