// Please implement the `ComputationError.IllegalArgument` error.
pub const ComputationError = error{
    IllegalArgument,
};
pub fn steps(number: usize) anyerror!usize {
    var numberOfSteps: usize = 0;
    var n: usize = number;

    if(number == 0) return ComputationError.IllegalArgument;

    while(n > 1){
        if(n % 2 == 0){
            n /= 2;
        }
        else n = 3 * n + 1;
        numberOfSteps += 1;
    }
    
    
    return numberOfSteps;
}
