class PagesController < ApplicationController

  # def home
  #   h = ViewCounter.find_by(page_name: 'home')
  #   h.view_count += 1
  #   h.save

  # end

  # def about
  #   a = ViewCounter.find_by(page_name: 'about')
  #   a.view_count += 1
  #   a.save
  # end

  # def new
  #   n = ViewCounter.find_by(page_name: 'new')
  #   n.view_count += 1
  #   n.save
  # end

def home  
    @counter = ViewCounter.find_by(page_name: 'home')
    if @counter == nil 
      @counter.page_name = 'home'
      @counter = ViewCounter.create(page_name: 'home', view_count: 1)
    else 
      @counter.view_count += 1
      @counter.save
    end
end

def about 
    @counter = ViewCounter.find_by(page_name: 'about')
    if @counter == nil 
      @counter.page_name = 'about'
      @counter = ViewCounter.create(page_name: 'about', view_count: 1)
    else 
      @counter.view_count += 1
      @counter.save
    end
end

def new 
    @counter = ViewCounter.find_by(page_name: 'new')
    if @counter == nil 
      @counter.page_name = 'new'
      @counter = ViewCounter.create(page_name: 'new', view_count: 1)
    else 
      @counter.view_count += 1
      @counter.save
    end
end


end
