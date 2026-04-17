fn main(
    x: pub Field,
    y: pub Field,
    z: pub Field,
    result: pub Field
) {
    // Intermediate constraint (not exposed)
    let temp = x * y;

    // Final constraint
    assert(temp + z == result);
}