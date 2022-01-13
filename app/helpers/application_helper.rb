module ApplicationHelper
    # returns a full title on a per page basis

# method defintion, optional argument
    def full_title(page_title = ' ')
        #creation and assigning a variable 
        base_title = 'Orbit Feedback Application'
        # boolean test
        if page_title.empty? 

            # implicit return 
            base_title
        else

            # string concatenation
            page_title + " | " + base_title
        end

   
    end
end
