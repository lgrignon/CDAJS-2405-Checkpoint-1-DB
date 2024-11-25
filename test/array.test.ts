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

  // pop()
  it("should remove and return the last element in the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");

    const result = newArray.pop();

    expect(result).toHaveLength(1);
    expect(result).toEqual("b");
    expect(newArray.value).toHaveLength(1);
  })

  // shift()
  it("should remove and return the first element in the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");

    const result = newArray.shift();

    expect(result).toHaveLength(1);
    expect(result).toEqual("a");
    expect(newArray.value).toHaveLength(1);
  })
});

