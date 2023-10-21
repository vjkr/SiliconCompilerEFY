module inverterc(
    input wire clk,      // Clock signal
    input wire input_data, // Input data to be inverted
    output wire output_data // Inverted output data
);

// Registers to store the data
reg flip_flop;

// Always block triggered by the rising edge of the clock
always @(posedge clk) begin
    // Invert the input data and store it in the flip-flop
    flip_flop <= ~input_data;
end

// Assign the inverted output
assign output_data = flip_flop;

endmodule




