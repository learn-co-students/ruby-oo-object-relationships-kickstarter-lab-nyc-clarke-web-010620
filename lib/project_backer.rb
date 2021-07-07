class ProjectBacker
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    @@all = []
    attr_accessor :project, :backer


    def self.all
        @@all
    end
end
