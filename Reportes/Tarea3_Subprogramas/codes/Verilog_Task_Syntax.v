// Style 1
task <task_name> (input <port_list>, inout <port_list>, output <port_list>);
 ...
endtask

// Style 2
task <task_name>;
  input <port_list>;
  inout <port_list>;
  output <port_list>;
  ...
endtask