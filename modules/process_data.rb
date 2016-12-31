module ProcessData
	def self.get_details(log_file)
		data = File.open(log_file).collect(&:chomp)
	end
end