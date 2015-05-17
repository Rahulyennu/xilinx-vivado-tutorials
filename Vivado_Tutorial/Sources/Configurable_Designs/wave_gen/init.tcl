
set currentFile [file normalize [info script]]
set currentDir [file dirname $currentFile]

source -notrace "$currentDir/wave_gen.tcl"

proc getConfigDesignInfo {} {
  #name - mandatory
  #description - optional
  return [dict create name {WaveGen (HDL)} description {Small RTL project with IP}]
}

proc getSupportedParts {} {
   return [list virtex7{xc7v585tffg1157-2} kintexu{xcku035-fbva900-2-e} kintex7{xc7k325tffg900-2} kintex7{xc7k70tfbg676-1}] 
}

proc getSupportedBoards {} {
   return ""; 
}

proc addOptions {designObject} {
  #place to define all parameters
}

proc addGUILayout {} {
  #place to define GUI layout for options
}

