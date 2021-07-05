class Backer
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def self.all
        @@all
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        backing = ProjectBacker.all.select do |backed_project|
            backed_project.backer == self
        end
        backed_projects = backing.map do |backed_project|
            backed_project.project
        end
    end
end