class Backer

  attr_accessor :name, :backed_projects, :title

  def initialize(name)
    @name  = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
    # if !project.backers.include?(self)
    #   project.add_backer(self)
    #end
  end
end
