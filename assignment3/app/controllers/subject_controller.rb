class SubjectController < ApplicationController
  def index
    @subjects = Subjects.all
  end

  def show
    @Subject = Subjects.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
