# Author: Amon Bhatti

# Constants
GST_RATE = 0.05
PST_RATE = 0.07

# Prompting user for input
print "Enter the subtotal: "
sub_total = gets.chomp.to_f

# Calculating taxes
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculating grand total
grand_total = sub_total + gst + pst

# Printing output
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Message based on grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end
