class StudentsController < ApplicationController
    def index
        student = Student.all

        render json: student
    end

    def create
        student = Student.create(student_params)

        render json:student
    end

    def show
        student = Student.find_by(id: params[:id])

        if student 
            render json: student
        else
            render json: { message: "Not Found"}, status: :not_found
        end
    end

    def update
        student = Student.find(params[:id])

        student.update(student_params)

        render json: student
    end

    def destroy
        Student.destroy(params[:id])
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :age)
    end
end
