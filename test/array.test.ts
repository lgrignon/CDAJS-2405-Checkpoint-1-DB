import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should have an element in the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });
});

describe("Pop", () => {
  it("should remove last element in the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const result = newArray.pop();

    expect(newArray.value).toHaveLength(2);
    expect(result).toEqual("c");
  });
});

describe("Shift", () => {
  it("should remove first element in the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    const result = newArray.shift();

    expect(newArray.value).toHaveLength(2);
    expect(result).toEqual("a");
  });
});
