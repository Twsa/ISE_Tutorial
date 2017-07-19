
-- VHDL Instantiation Created from source file statmach.vhd -- 11:18:36 07/18/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT statmach
	PORT(
		clk : IN std_logic;
		dcm_lock : IN std_logic;
		lap_load : IN std_logic;
		mode_in : IN std_logic;
		reset : IN std_logic;
		strtstop : IN std_logic;          
		clken : OUT std_logic;
		lap_trigger : OUT std_logic;
		load : OUT std_logic;
		mode : OUT std_logic;
		rst : OUT std_logic
		);
	END COMPONENT;

	Inst_statmach: statmach PORT MAP(
		clk => ,
		dcm_lock => ,
		lap_load => ,
		mode_in => ,
		reset => ,
		strtstop => ,
		clken => ,
		lap_trigger => ,
		load => ,
		mode => ,
		rst => 
	);


