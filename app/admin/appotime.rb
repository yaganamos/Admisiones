ActiveAdmin.register Appotime do
batch_action :destroy, false
  form do |f|
    inputs 'Details' do
      input :appointment_date
      input :appointment_type,  :as => :select, :collection => [ 'inscripcion', 'entrevista', 'prueba admision', 'matricula']
      actions
    end
    
   
  end

      filter :appointment_date
      filter :appointment_type,  :as => :select, :collection => [ 'inscripcion', 'entrevista', 'prueba admision', 'matricula']
      
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :appointment_type, :appointment_date
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
index do
	column :appointment_date
    column :appointment_type
    actions
end

end
