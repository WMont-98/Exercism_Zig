pub fn isValidIsbn10(s: []const u8) bool {
    var position: usize = 1;
    var value: usize = 0;
    var sum: usize = 0;

    for(s)|c|{
        if(c == '-') continue;
        if((c == 'X') and position != 10) return false;
        value = switch(c){
            '1' => 1,
            '2' => 2,
            '3' => 3,
            '4' => 4,
            '5' => 5,
            '6' => 6,
            '7' => 7,
            '8' => 8,
            '9' => 9,
            '0' => 0,
            'X' => 10,
            else => return false,
        };

        sum += value * (11 - position);
        position += 1;
    }
    if(position != 11) return false;
    return sum % 11 == 0;
}
