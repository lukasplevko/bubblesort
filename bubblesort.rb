def bubblesort(array,order="asc")
	sorted = false
	index = 0;
	order = order.downcase

	sorted_array=array
	while !sorted do
		if(sorted_array.size <= index+1)
			index = 0
		end


		#Take current item and next
		a = sorted_array[index]
		b = sorted_array[index+1]

		case order
		when "asc"
			if(a > b)
				sorted_array[index+1] = a
				sorted_array[index] = b
				#Check for ascending order
				sorted = sorted_array.each_cons(2).all?{|left, right| left <= right}
			end
		when "desc"
			if(a < b)
				sorted_array[index+1] = a
				sorted_array[index] = b

				#Check for descending order
				sorted = sorted_array.each_cons(2).all?{|left, right| left >= right}
			end
		end

		index += 1

	end

	p "#{sorted_array}"

end


bubblesort([14,3,78,2,0,2],"desc")