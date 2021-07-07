class Backer
    def initialize(name)
        @name = name
    end

    attr_accessor :name

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projectbackers
        ProjectBacker.all.select do |projback|
            projback.backer == self
        end
    end


    def backed_projects
        self.projectbackers.map do |projback|
            projback.project
        end
    end


end
