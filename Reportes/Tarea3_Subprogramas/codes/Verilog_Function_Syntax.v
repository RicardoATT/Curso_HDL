// Style 1
function <return_type> <function_name> (input <port_list>,inout <port_list>, output <port_list>);
 ...
 return <value or expression>
endfunction

// Style 2
function <return_type> <function_name>;
  input <port_list>;
  inout <port_list>;
  output <port_list>;
  ...
  return <value or expression>
endfunction