class RacesController < ApplicationController
  
  
  skip_before_filter  :verify_authenticity_token
  

def nsda
  
end

  #oiubsdaiud
  
  def index
    #non mtto il json va a html con stesso nome
  end
  
  def clear_all
  Races.all.destroy;
  end
  
  def new 
    puts "Created new >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
    @race = Race.new(:user => params[:user])
   if @race.save
      render :json => { :race => @race}
    else
      @error = Error.new(:description => "Cazzo c'è un errore");
      @error.save;
       render :json => { :error => @error}
end

  end
  
    def view
      
      @race=Race.all.offset((params[:page].to_i-1)*5).limit(5);
      
    render :json => { :race => @race}
  end
  
  
  
  def edit
  end

  def show
          @race=Race.find(params[:id]);
    render :json => { :race => @race}
  end



  def create
    
    @race=Race.new(race_params[:race]);
       if @race.save
      render :json => { :race => @race}
    else
      @error = Error.new(:description => "Cazzo c'è un errore");
      @error.save;
       render :json => { :error => @error}
     end
  end
  
  
  def update
  end

  def destroy
    @race=Race.find(params[:id]);
    @race.destroy;
    render :json => { :race => @race}
    
  end
  
    private
  def race_params
    params.permit(race: [:user, :data, :name])
  end
  
  
end
