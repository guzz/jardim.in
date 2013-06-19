module ApplicationHelper

	# Return a title on per-page basi.
	def title
		base_title = "Jardins Suspensos"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
end
