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

  it("should remove last element in the array", () => {
    const newArray = new Arr();

    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    newArray.pop();

    expect(newArray.value).toHaveLength(2);
    expect(newArray.value).not.toContain("c");
  })

  it("should remove first element from array", () => {
    const newArray = new Arr();

    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    newArray.shift();

    expect(newArray.value).toHaveLength(2);
    expect(newArray.value).not.toContain("a");
  })


});
