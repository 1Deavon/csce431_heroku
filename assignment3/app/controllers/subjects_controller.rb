class SubjectsController < ApplicationController
  def index
    @subjects = Book.all
  end
  
  def show
    @subject = Book.find(params[:id])
  end
  
  def new
    @subject = Book.new
  end

  def create
    @subject = Book.new(subject_params)

    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @subject = Book.find(params[:id])
  end

  def update
    @subject = Book.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end

  end

  def delete
    @subject = Book.find(params[:id])
  end

  def destroy
    @subject = Book.find(params[:id])
    @subject.destroy
    redirect_to(subjects_path)
  end

  private
    def subject_params
        params.require(:book).permit(:title, :author, :genre, :price, :published_date)
    end


end
