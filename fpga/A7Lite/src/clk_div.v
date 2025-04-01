module clk_div (
    input  wire clk_in,     // Input clock
    input  wire rst_n,      // Active low reset
    output wire clk_out    // Output clock (divided by 256)
);

    // 8-bit counter (since 2^8 = 256)
    reg [7:0] counter;

    // Counter logic
    always @(posedge clk_in or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 8'b0;
        end else begin
            counter <= counter + 1'b1;
        end
    end

    // Use the MSB of the counter as the output clock
    // This creates a divide-by-256 clock
    assign clk_out = counter[7];

endmodule