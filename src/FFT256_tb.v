module FFT256_tb;
	parameter 					FFT_size		= 256;
	parameter 					IN_width		= 12;
	parameter 					OUT_width		= 16;
	parameter 					cycle			= 10.0;
	integer 					j;
    reg signed	[IN_width-1:0]  int_r [0:FFT_size-1];
    reg signed	[IN_width-1:0]  int_i [0:FFT_size-1];
	reg 						clk, rst_n, in_valid;
	wire 						out_valid;
	reg signed [IN_width-1:0] 	din_r, din_i;
	wire signed [OUT_width-1:0] dout_r, dout_i;
////////////////////////////////////////////
	always #(cycle/2.0) 
		clk = ~clk;
////////////////////////////////////////////
	FFT256 uut_FFT256(
		.clk(clk),
		.rst_n(rst_n),
		.in_valid(in_valid),
		.din_r(din_r),
		.din_i(din_i),
		.out_valid(out_valid),
		.dout_r(dout_r),
		.dout_i(dout_i)
	);
////////////////////////////////////////////	
	initial begin
		int_r[0] =  0;
		int_r[1] =  260;
		int_r[2] =  34;
		int_r[3] =  618;
		int_r[4] =  221;
		int_r[5] =  622;
		int_r[6] =  512;
		int_r[7] =  366;
		int_r[8] =  665;
		int_r[9] =  106;
		int_r[10] =  477;
		int_r[11] =  4;
		int_r[12] =  -1;
		int_r[13] =  -5;
		int_r[14] =  -478;
		int_r[15] =  -107;
		int_r[16] =  -666;
		int_r[17] =  -367;
		int_r[18] =  -513;
		int_r[19] =  -623;
		int_r[20] =  -222;
		int_r[21] =  -619;
		int_r[22] =  -35;
		int_r[23] =  -261;
		int_r[24] =  -1;
		int_r[25] =  260;
		int_r[26] =  34;
		int_r[27] =  618;
		int_r[28] =  221;
		int_r[29] =  622;
		int_r[30] =  511;
		int_r[31] =  366;
		int_r[32] =  665;
		int_r[33] =  106;
		int_r[34] =  477;
		int_r[35] =  4;
		int_r[36] =  0;
		int_r[37] =  -5;
		int_r[38] =  -478;
		int_r[39] =  -107;
		int_r[40] =  -666;
		int_r[41] =  -367;
		int_r[42] =  -513;
		int_r[43] =  -623;
		int_r[44] =  -222;
		int_r[45] =  -619;
		int_r[46] =  -35;
		int_r[47] =  -261;
		int_r[48] =  -1;
		int_r[49] =  260;
		int_r[50] =  34;
		int_r[51] =  618;
		int_r[52] =  221;
		int_r[53] =  622;
		int_r[54] =  512;
		int_r[55] =  366;
		int_r[56] =  665;
		int_r[57] =  106;
		int_r[58] =  477;
		int_r[59] =  4;
		int_r[60] =  0;
		int_r[61] =  -5;
		int_r[62] =  -478;
		int_r[63] =  -107;
		int_r[64] =  -666;
		int_r[65] =  -367;
		int_r[66] =  -513;
		int_r[67] =  -623;
		int_r[68] =  -222;
		int_r[69] =  -619;
		int_r[70] =  -35;
		int_r[71] =  -261;
		int_r[72] =  0;
		int_r[73] =  260;
		int_r[74] =  34;
		int_r[75] =  618;
		int_r[76] =  221;
		int_r[77] =  622;
		int_r[78] =  511;
		int_r[79] =  366;
		int_r[80] =  665;
		int_r[81] =  106;
		int_r[82] =  477;
		int_r[83] =  4;
		int_r[84] =  0;
		int_r[85] =  -5;
		int_r[86] =  -478;
		int_r[87] =  -107;
		int_r[88] =  -666;
		int_r[89] =  -367;
		int_r[90] =  -513;
		int_r[91] =  -623;
		int_r[92] =  -222;
		int_r[93] =  -619;
		int_r[94] =  -35;
		int_r[95] =  -261;
		int_r[96] =  -1;
		int_r[97] =  260;
		int_r[98] =  34;
		int_r[99] =  618;
		int_r[100] =  221;
		int_r[101] =  622;
		int_r[102] =  512;
		int_r[103] =  366;
		int_r[104] =  665;
		int_r[105] =  106;
		int_r[106] =  477;
		int_r[107] =  4;
		int_r[108] =  0;
		int_r[109] =  -5;
		int_r[110] =  -478;
		int_r[111] =  -107;
		int_r[112] =  -666;
		int_r[113] =  -367;
		int_r[114] =  -512;
		int_r[115] =  -623;
		int_r[116] =  -222;
		int_r[117] =  -619;
		int_r[118] =  -35;
		int_r[119] =  -261;
		int_r[120] =  -1;
		int_r[121] =  260;
		int_r[122] =  34;
		int_r[123] =  618;
		int_r[124] =  221;
		int_r[125] =  622;
		int_r[126] =  511;
		int_r[127] =  366;
		int_r[128] =  665;
		int_r[129] =  106;
		int_r[130] =  477;
		int_r[131] =  4;
		int_r[132] =  0;
		int_r[133] =  -5;
		int_r[134] =  -478;
		int_r[135] =  -107;
		int_r[136] =  -666;
		int_r[137] =  -367;
		int_r[138] =  -513;
		int_r[139] =  -623;
		int_r[140] =  -222;
		int_r[141] =  -619;
		int_r[142] =  -35;
		int_r[143] =  -261;
		int_r[144] =  0;
		int_r[145] =  260;
		int_r[146] =  34;
		int_r[147] =  618;
		int_r[148] =  221;
		int_r[149] =  622;
		int_r[150] =  511;
		int_r[151] =  366;
		int_r[152] =  665;
		int_r[153] =  106;
		int_r[154] =  477;
		int_r[155] =  4;
		int_r[156] =  0;
		int_r[157] =  -5;
		int_r[158] =  -478;
		int_r[159] =  -107;
		int_r[160] =  -666;
		int_r[161] =  -367;
		int_r[162] =  -513;
		int_r[163] =  -623;
		int_r[164] =  -222;
		int_r[165] =  -619;
		int_r[166] =  -35;
		int_r[167] =  -261;
		int_r[168] =  0;
		int_r[169] =  260;
		int_r[170] =  34;
		int_r[171] =  618;
		int_r[172] =  221;
		int_r[173] =  622;
		int_r[174] =  511;
		int_r[175] =  366;
		int_r[176] =  665;
		int_r[177] =  106;
		int_r[178] =  477;
		int_r[179] =  4;
		int_r[180] =  0;
		int_r[181] =  -5;
		int_r[182] =  -478;
		int_r[183] =  -107;
		int_r[184] =  -666;
		int_r[185] =  -367;
		int_r[186] =  -513;
		int_r[187] =  -623;
		int_r[188] =  -222;
		int_r[189] =  -619;
		int_r[190] =  -35;
		int_r[191] =  -261;
		int_r[192] =  -1;
		int_r[193] =  260;
		int_r[194] =  34;
		int_r[195] =  618;
		int_r[196] =  221;
		int_r[197] =  622;
		int_r[198] =  511;
		int_r[199] =  366;
		int_r[200] =  665;
		int_r[201] =  106;
		int_r[202] =  477;
		int_r[203] =  4;
		int_r[204] =  -1;
		int_r[205] =  -5;
		int_r[206] =  -478;
		int_r[207] =  -107;
		int_r[208] =  -666;
		int_r[209] =  -367;
		int_r[210] =  -513;
		int_r[211] =  -623;
		int_r[212] =  -222;
		int_r[213] =  -619;
		int_r[214] =  -35;
		int_r[215] =  -261;
		int_r[216] =  -1;
		int_r[217] =  260;
		int_r[218] =  34;
		int_r[219] =  618;
		int_r[220] =  221;
		int_r[221] =  622;
		int_r[222] =  511;
		int_r[223] =  366;
		int_r[224] =  665;
		int_r[225] =  106;
		int_r[226] =  477;
		int_r[227] =  4;
		int_r[228] =  0;
		int_r[229] =  -5;
		int_r[230] =  -478;
		int_r[231] =  -107;
		int_r[232] =  -666;
		int_r[233] =  -367;
		int_r[234] =  -513;
		int_r[235] =  -623;
		int_r[236] =  -222;
		int_r[237] =  -619;
		int_r[238] =  -35;
		int_r[239] =  -261;
		int_r[240] =  -1;
		int_r[241] =  260;
		int_r[242] =  34;
		int_r[243] =  618;
		int_r[244] =  221;
		int_r[245] =  622;
		int_r[246] =  511;
		int_r[247] =  366;
		int_r[248] =  665;
		int_r[249] =  106;
		int_r[250] =  477;
		int_r[251] =  4;
		int_r[252] =  0;
		int_r[253] =  -5;
		int_r[254] =  -478;
		int_r[255] =  -107;
	end
	initial begin
		int_i[0] =  0;
		int_i[1] =  0;
		int_i[2] =  0;
		int_i[3] =  0;
		int_i[4] =  0;
		int_i[5] =  0;
		int_i[6] =  0;
		int_i[7] =  0;
		int_i[8] =  0;
		int_i[9] =  0;
		int_i[10] =  0;
		int_i[11] =  0;
		int_i[12] =  0;
		int_i[13] =  0;
		int_i[14] =  0;
		int_i[15] =  0;
		int_i[16] =  0;
		int_i[17] =  0;
		int_i[18] =  0;
		int_i[19] =  0;
		int_i[20] =  0;
		int_i[21] =  0;
		int_i[22] =  0;
		int_i[23] =  0;
		int_i[24] =  0;
		int_i[25] =  0;
		int_i[26] =  0;
		int_i[27] =  0;
		int_i[28] =  0;
		int_i[29] =  0;
		int_i[30] =  0;
		int_i[31] =  0;
		int_i[32] =  0;
		int_i[33] =  0;
		int_i[34] =  0;
		int_i[35] =  0;
		int_i[36] =  0;
		int_i[37] =  0;
		int_i[38] =  0;
		int_i[39] =  0;
		int_i[40] =  0;
		int_i[41] =  0;
		int_i[42] =  0;
		int_i[43] =  0;
		int_i[44] =  0;
		int_i[45] =  0;
		int_i[46] =  0;
		int_i[47] =  0;
		int_i[48] =  0;
		int_i[49] =  0;
		int_i[50] =  0;
		int_i[51] =  0;
		int_i[52] =  0;
		int_i[53] =  0;
		int_i[54] =  0;
		int_i[55] =  0;
		int_i[56] =  0;
		int_i[57] =  0;
		int_i[58] =  0;
		int_i[59] =  0;
		int_i[60] =  0;
		int_i[61] =  0;
		int_i[62] =  0;
		int_i[63] =  0;
		int_i[64] =  0;
		int_i[65] =  0;
		int_i[66] =  0;
		int_i[67] =  0;
		int_i[68] =  0;
		int_i[69] =  0;
		int_i[70] =  0;
		int_i[71] =  0;
		int_i[72] =  0;
		int_i[73] =  0;
		int_i[74] =  0;
		int_i[75] =  0;
		int_i[76] =  0;
		int_i[77] =  0;
		int_i[78] =  0;
		int_i[79] =  0;
		int_i[80] =  0;
		int_i[81] =  0;
		int_i[82] =  0;
		int_i[83] =  0;
		int_i[84] =  0;
		int_i[85] =  0;
		int_i[86] =  0;
		int_i[87] =  0;
		int_i[88] =  0;
		int_i[89] =  0;
		int_i[90] =  0;
		int_i[91] =  0;
		int_i[92] =  0;
		int_i[93] =  0;
		int_i[94] =  0;
		int_i[95] =  0;
		int_i[96] =  0;
		int_i[97] =  0;
		int_i[98] =  0;
		int_i[99] =  0;
		int_i[100] =  0;
		int_i[101] =  0;
		int_i[102] =  0;
		int_i[103] =  0;
		int_i[104] =  0;
		int_i[105] =  0;
		int_i[106] =  0;
		int_i[107] =  0;
		int_i[108] =  0;
		int_i[109] =  0;
		int_i[110] =  0;
		int_i[111] =  0;
		int_i[112] =  0;
		int_i[113] =  0;
		int_i[114] =  0;
		int_i[115] =  0;
		int_i[116] =  0;
		int_i[117] =  0;
		int_i[118] =  0;
		int_i[119] =  0;
		int_i[120] =  0;
		int_i[121] =  0;
		int_i[122] =  0;
		int_i[123] =  0;
		int_i[124] =  0;
		int_i[125] =  0;
		int_i[126] =  0;
		int_i[127] =  0;
		int_i[128] =  0;
		int_i[129] =  0;
		int_i[130] =  0;
		int_i[131] =  0;
		int_i[132] =  0;
		int_i[133] =  0;
		int_i[134] =  0;
		int_i[135] =  0;
		int_i[136] =  0;
		int_i[137] =  0;
		int_i[138] =  0;
		int_i[139] =  0;
		int_i[140] =  0;
		int_i[141] =  0;
		int_i[142] =  0;
		int_i[143] =  0;
		int_i[144] =  0;
		int_i[145] =  0;
		int_i[146] =  0;
		int_i[147] =  0;
		int_i[148] =  0;
		int_i[149] =  0;
		int_i[150] =  0;
		int_i[151] =  0;
		int_i[152] =  0;
		int_i[153] =  0;
		int_i[154] =  0;
		int_i[155] =  0;
		int_i[156] =  0;
		int_i[157] =  0;
		int_i[158] =  0;
		int_i[159] =  0;
		int_i[160] =  0;
		int_i[161] =  0;
		int_i[162] =  0;
		int_i[163] =  0;
		int_i[164] =  0;
		int_i[165] =  0;
		int_i[166] =  0;
		int_i[167] =  0;
		int_i[168] =  0;
		int_i[169] =  0;
		int_i[170] =  0;
		int_i[171] =  0;
		int_i[172] =  0;
		int_i[173] =  0;
		int_i[174] =  0;
		int_i[175] =  0;
		int_i[176] =  0;
		int_i[177] =  0;
		int_i[178] =  0;
		int_i[179] =  0;
		int_i[180] =  0;
		int_i[181] =  0;
		int_i[182] =  0;
		int_i[183] =  0;
		int_i[184] =  0;
		int_i[185] =  0;
		int_i[186] =  0;
		int_i[187] =  0;
		int_i[188] =  0;
		int_i[189] =  0;
		int_i[190] =  0;
		int_i[191] =  0;
		int_i[192] =  0;
		int_i[193] =  0;
		int_i[194] =  0;
		int_i[195] =  0;
		int_i[196] =  0;
		int_i[197] =  0;
		int_i[198] =  0;
		int_i[199] =  0;
		int_i[200] =  0;
		int_i[201] =  0;
		int_i[202] =  0;
		int_i[203] =  0;
		int_i[204] =  0;
		int_i[205] =  0;
		int_i[206] =  0;
		int_i[207] =  0;
		int_i[208] =  0;
		int_i[209] =  0;
		int_i[210] =  0;
		int_i[211] =  0;
		int_i[212] =  0;
		int_i[213] =  0;
		int_i[214] =  0;
		int_i[215] =  0;
		int_i[216] =  0;
		int_i[217] =  0;
		int_i[218] =  0;
		int_i[219] =  0;
		int_i[220] =  0;
		int_i[221] =  0;
		int_i[222] =  0;
		int_i[223] =  0;
		int_i[224] =  0;
		int_i[225] =  0;
		int_i[226] =  0;
		int_i[227] =  0;
		int_i[228] =  0;
		int_i[229] =  0;
		int_i[230] =  0;
		int_i[231] =  0;
		int_i[232] =  0;
		int_i[233] =  0;
		int_i[234] =  0;
		int_i[235] =  0;
		int_i[236] =  0;
		int_i[237] =  0;
		int_i[238] =  0;
		int_i[239] =  0;
		int_i[240] =  0;
		int_i[241] =  0;
		int_i[242] =  0;
		int_i[243] =  0;
		int_i[244] =  0;
		int_i[245] =  0;
		int_i[246] =  0;
		int_i[247] =  0;
		int_i[248] =  0;
		int_i[249] =  0;
		int_i[250] =  0;
		int_i[251] =  0;
		int_i[252] =  0;
		int_i[253] =  0;
		int_i[254] =  0;
		int_i[255] =  0;
	end
////////////////////////////////////////////	
	initial begin
		clk          = 0;
		rst_n        = 1;
		in_valid     = 0;
		@(negedge clk);
		@(negedge clk) rst_n = 0;
		@(negedge clk) rst_n = 1;
		@(negedge clk);
		////////////////////////
		for(j=0;j<FFT_size;j=j+1) begin
			@(negedge clk);
			in_valid 	= 1;
			din_r 		= int_r[j];
			din_i 		= int_i[j];
		end
		@(negedge clk) in_valid = 0;
		////////////////////////
		////////////////////////
		for(j=0;j<FFT_size;j=j+1) begin
			while(!out_valid) begin
				@(negedge clk); 
			end
		@(negedge clk);	
		end
		///////////////////////
		///////////////////////		
		$stop;
	end
endmodule