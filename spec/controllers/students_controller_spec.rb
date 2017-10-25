require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

	describe "GET index" do 
		it do 
			create(:student)
			create(:student)
			create(:student)

			get :index
			expect(assigns(:students)).to eq(Student.all)
			expect(response).to render_template(:index)
		end
	end

	describe "GET new" do 
		it do 
		    create(:student)
			get :new
			expect(assigns(:student)).to be_a_new(Student)
			expect(response).to render_template(:new)
		
		end
	end


	describe "GET show" do 
		it do 
			student = create(:student)
			get :show, params: { id: student.id }
			expect(assigns(:student)).to eq(student)
			expect(response).to render_template(:show)
		end
	end

	describe "GET edit" do 
		it do 
			student = create(:student)
			get :edit, params: { id: student.id }
			expect(assigns(:student)).to eq(student)
			expect(response).to render_template(:edit)
		end
	end

	describe "POST create" do 
		context 'with valid student params' do
		it do 
			student_params = attributes_for(:student).transform_keys(&:to_s)

			params = { student: student_params }

			post :create, params: params

			student = assigns(:student) 
			attributes_of_student = student.attributes.slice(*student_params.keys)

			expect(student.persisted?).to be_truthy
			expect(attributes_of_student).to eq(student_params) 

			expect(response).to redirect_to(student_path(id: student.id))
		end
		end


		context 'with invalid student parameters' do
		it do 
			student_params = attributes_for(:student, :invalid).transform_keys(&:to_s)

			params = { student: student_params }

			post :create, params: params

			student = assigns(:student) 

			expect(student.persisted?).to be_falsey
			expect(response).to render_template(:new)
		end
		end
	end



	# describe "PUT update" do 
	# 	context 'with valid student params' do
	# 	it do 
	# 		student = create(:student)
	# 		put :update, params: { id: student.id }
			
	# 		student = assigns(:student) 
	# 		expect(student.persisted?).to be_truthy

	# 		expect(response).to redirect_to(student_path(id: student.id))
	# 	end
	# 	end


	# 	context 'with invalid student parameters' do
	# 	it do 
	# 		student_params = attributes_for(:student, :invalid).transform_keys(&:to_s)

	# 		params = { student: student_params }

	# 		put :update, params: params

	# 		student = assigns(:student) 

	# 		expect(student.persisted?).to be_falsey
	# 		expect(response).to render_template(:edit)
	# 	end
	# 	end
	# end

describe 'PUT update' do 
	context 'with valid student params' do 
		it do 
			student = create(:student)
			student_params = attributes_for(:student, :changed)
			params = {id: student.id, student: student_params}
			put :update, params: params 

			expect(assigns(:student)).to eq(student) 

			student = assigns(:student) 

			expect(student.changed?).to be_falsey
			expect(response).to redirect_to(student_path(id: student.id))
		end
	end


	context 'with invalid student params' do 
		it do 
			student = create(:student)
			student_params = attributes_for(:student, :invalid)
			params = {id: student.id, student: student_params}
			put :update, params: params 

			expect(assigns(:student)).to eq(student) 

			student = assigns(:student) #looks for instance variable declared

			expect(student.changed?).to be_truthy
			expect(response).to render_template(:edit)
		end
	end
end


describe 'DELETE destroy' do 
	it do 
		student = create(:student)
		delete :destroy, params: { id: student.id }

		expect(Student.find_by(id: student.id)).to be_nil
		expect(response).to redirect_to(students_path)
	end

end







end 











