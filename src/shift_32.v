module shift_32(
	input clk,
	input rst_n,
	input in_valid,
	input signed [23:0] din_r,
	input signed [23:0] din_i,
	output signed [23:0] dout_r,
	output signed [23:0] dout_i
);
////////////////////////////////////////////
// Internal signals
reg [767:0] shift_reg_r ;
reg [767:0] shift_reg_i ;
reg [767:0] tmp_reg_r ;
reg [767:0] tmp_reg_i ;
reg [6:0] counter_32,next_counter_32;
reg valid,next_valid;
////////////////////////////////////////////
// Output logic
assign dout_r    = shift_reg_r[767:744];
assign dout_i    = shift_reg_i[767:744];
////////////////////////////////////////////
// Next state logic
always@(*)begin
    next_counter_32 = counter_32 + 6'd1;
    tmp_reg_r       = shift_reg_r;
    tmp_reg_i       = shift_reg_i;
    next_valid      = valid;
end
////////////////////////////////////////////
// State register
always@(posedge clk or negedge rst_n)begin
    if(~rst_n)begin
        shift_reg_r <= 0;
        shift_reg_i <= 0;
        counter_32  <= 0;
        valid       <= 0;
    end
    else 
    if (in_valid)begin
        counter_32       <= next_counter_32;
        shift_reg_r      <= (tmp_reg_r<<24) + din_r;
        shift_reg_i      <= (tmp_reg_i<<24) + din_i;
        valid            <= in_valid;
    end else if(valid)begin
        counter_32       <= next_counter_32;
        shift_reg_r      <= (tmp_reg_r<<24) + din_r;
        shift_reg_i      <= (tmp_reg_i<<24) + din_i;
        valid            <= next_valid;
    end
end

endmodule