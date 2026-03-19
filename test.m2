%
  This is a foldable multi-line comment
  check regions overlapping priority: Abc 123 .id * *1 'quoted' "text"
  check no parts of speech are detected: = / $ < : > # * ! ., ; ( )
  special labels: BUG DEPRECATED FIXME NOTE TEST TODO WARN
  A = B / C / 'rule inside the comment';
%

.SyNtAx A                               % reserved names are case-insensitive %
A = 'foo' % inline comment % "bar" .,   % strings, comment after equation %
A = B $(',' B) / $C ;                   % grouping, alternation, repetition,
                                          another equation terminator, multi-line
                                          comment between equations %
A = .id .string .number .lb .empty      % keywords, multi-line comment
                                            inside equation, %
    .out('OPCODE ' *) .label * *1 *2 ;  %   multi-line equation, labels %
A = .RESERVED('if' 'then' 'while')      % extensions: reserved built-ins, %
    .Include('filename')                %   redirect input, %
    .coN .FiLe('filename')              %   redirect output, %
    .NL .Tb .lM+ .lm-                   %   format output, %
    $<:>K $<0:*>L $<2:3>M $<*:4>N       %   iterations, %
    [[ P_try ] Q_catch ]                %   error recovery, %
    #WARNS #ERRORS                      %   named integer counters, %
    *ERRTOKEN *ERRLINE ;                %   named string buffers %
V_1a                                    % long names in both LHS and %
  = Ab cd Ef12 gH3_4 IjK l_mN _O_P_q_   %   RHS, %
  / 'qux' ;                             %   multi-line equation %
% extension: token rules %
ID     : .TOKEN ALPHA $(ALPHA / DIGIT) .DELTOK ;
NUMBER : .TOKEN DIGIT $DIGIT .DELTOK ;
ALPHA  : .ANY(65:90!97:122) ;
DIGIT  : .ANY(48:57) ;
.End
