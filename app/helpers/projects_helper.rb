module ProjectsHelper
	def bc_projects
		@projects = Project.all
	end

	def rows_by_tens(records)
		records
			.sort_by { |r| r.display_order.to_i }            # ensure display order
			.group_by { |r| r.display_order.to_i / 10 }      # 0..9 => 0, 10..19 => 1, etc.
			.sort_by { |bucket, _| bucket }                  # row 0, row 1, ...
			.map { |_, items| items }                        # keep just the items per row
	end
end
