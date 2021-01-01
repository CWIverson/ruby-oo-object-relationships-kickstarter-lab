class Backer 
    @@all = []
    attr_reader :name
    def initialize(name)
        @name=name
        @@all<<self
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        array = ProjectBacker.all.select do |project_backer|
             project_backer.backer == self
               
        end
        array.map do |project_backer|
            project_backer.project
        end
    end

end