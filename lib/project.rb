class Project
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end
    attr_accessor :title
    def self.all
        @@all
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        backing = ProjectBacker.all.select do |backed_project|
            backed_project.project == self
        end
        backers = backing.map do |backed_project|
            backed_project.backer
        end
    end
end