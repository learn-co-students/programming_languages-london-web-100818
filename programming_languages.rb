require "pry"

def reformat_languages(languages)
 
  new_hash = {}
  
  
  languages.each do |lang_type,lang|
   
    lang.each do |lang_sys,type|
     
      if new_hash[lang_sys] == nil
        
        new_hash[lang_sys] = {type.keys[0] => type.values.join(""), :style => [lang_type]}
      
    else
      
        new_hash[lang_sys][:style] << lang_type
        
      
      end
      
    end
    
  end
    
    new_hash
    
    
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  

end
