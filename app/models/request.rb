class Request < ActiveRecord::Base
	validates :name, presence: true, length: {minimum: 2}
	validates :org, presence: true
	validates :email, presence: true
	validates :number, presence: true
	validates :interest, presence: true
	validates :message, presence: true
	INTERESTS = ['Scanners : Document Scanners','Scanners : A0 Wide Format','Scanners : Microfilm Cameras']
end
