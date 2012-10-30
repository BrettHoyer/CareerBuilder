require 'net/http'
require 'xmlsimple'
require 'ap'



class JobsController < ApplicationController
	

	def search
	end

	def results
		@job_title=params["job_title"]
		@state=params["state"]

		
		key = "WDT83166R85MB388SXPL"
		jobsearch = "http://api.careerbuilder.com/v1/jobsearch?DeveloperKey=#{key}&location=#{@state}&jobtitle=#{@job_title}"

		jobsearch_xml = Net::HTTP.get_response(URI.parse(jobsearch)).body
 		config = XmlSimple.xml_in(jobsearch_xml, { 'KeyAttr' => 'name' })

 		@results=config["Results"]

 		@output=config["Results"]

 		
 	
	end

	# def markers
	# 	results = results
	# 	results.each do 
	# 		locations_array = []



	# 	end
	# 	@marker = locations_array

	# end
end