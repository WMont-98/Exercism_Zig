pub fn squareOfSum(number: usize) usize {
    var num: usize = number;
    var sum: usize = 0;
    while(num > 0){
        sum += num;
        num -= 1;
    }
    return sum * sum;
}

pub fn sumOfSquares(number: usize) usize {
    var num: usize = number;
    var sum: usize = 0;
    while(num > 0){
        sum += num * num;
        num -= 1;
    }
    return sum;
}

pub fn differenceOfSquares(number: usize) usize {
    return squareOfSum(number) - sumOfSquares(number);
}
