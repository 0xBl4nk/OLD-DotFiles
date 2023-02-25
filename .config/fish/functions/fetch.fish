function fetch --wraps='clear && :wneofetch' --wraps='clear && neofetch' --description 'alias fetch=clear && neofetch'
  clear && neofetch $argv; 
end
