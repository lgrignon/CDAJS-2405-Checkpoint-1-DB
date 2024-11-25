import Arr from "../arr";

describe("Array", () => {
  it("should create an array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should add an element in the array", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
  });

  it("should remove and return the last element of the array", () => {
    const newArray = new Arr();
    newArray.value = ["a", "b"];
    const result = newArray.pop();

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual("b");
  });

  it("should return undefined if the array is empty when pop is called", () => {
    const newArray = new Arr();
    const result = newArray.pop();

    expect(result).toBeUndefined();
  });

  it("should remove and return the first element of the array", () => {
    const newArray = new Arr();
    newArray.value = ["a", "b"];
    const result = newArray.shift();

    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual("a");
  });

  it("should return undefined if the array is empty when shift is called", () => {
    const newArray = new Arr();
    const result = newArray.shift();

    expect(result).toBeUndefined();
  });
});
