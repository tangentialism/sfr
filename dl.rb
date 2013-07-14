#curl http://sfraves.org/archives/sfrlist/1992/sfr.9207.gz -o 9207.gz

(1992..2009).each do |year|
	['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'].each do |m|
		mo =  "#{y[-2..-1]}#{m}"
		puts mo
		`curl http://sfraves.org/archives/sfrlist/#{year}/sfr.#{mo}.gz | gunzip > #{mo}.txt`
	end
end
