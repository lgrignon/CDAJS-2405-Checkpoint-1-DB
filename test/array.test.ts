import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should had an element in the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("should remove last element from the array with .pop()", () => {
    const newArray = new Arr();
    newArray.push("a")
    newArray.push("b")
    const poped = newArray.pop()

    expect(newArray.value).toHaveLength(1)
    expect(poped).toEqual("b")
  })

  // pop()

  it("should return undefined when popping from an empty array", () => {
    const newArray = new Arr();
    const popped = newArray.pop();

    expect(newArray.value).toHaveLength(0); 
    expect(popped).toBeUndefined();
  });

  // shift()

  it("should remove first element from the array with .shift()", () => {
    const newArray = new Arr();
    newArray.push("a")
    newArray.push("b")
    const shifted = newArray.shift()

    expect(newArray.value).toHaveLength(1)
    expect(shifted).toEqual("a")
  })

  it("should return undefined when shift from an empty array", () => {
    const newArray = new Arr();
    const popped = newArray.shift();

    expect(newArray.value).toHaveLength(0); 
    expect(popped).toBeUndefined();
  });

});
