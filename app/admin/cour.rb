ActiveAdmin.register Cour do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
permit_params  :c_name, :p_name, :abn, :mob, :email, :c_type, :country, :state, :city, :comp_name, :landline, :remarks, :pin, :trans_date, :trans_status, :sms_reply, :delivery_date, :web_confirm

end
