import Arr from "../arr";

describe("Array", () => {
  it("should create an empty array", () => {
    const newArray = new Arr();

    expect(newArray.value).toHaveLength(0);
  });

  it("should add an element to the array using push", () => {
    const newArray = new Arr();
    const result = newArray.push("a");

    expect(newArray.value).toHaveLength(1);
    expect(newArray.value).toEqual(["a"]);
    expect(result).toEqual(1);
  });

  it("should add multiple elements to the array using push", () => {
    const newArray = new Arr();
    newArray.push("a");
    const result = newArray.push("b");

    expect(newArray.value).toHaveLength(2);
    expect(newArray.value).toEqual(["a", "b"]);
    expect(result).toEqual(2);
  });

  it("should remove and return the last element using pop", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    const result = newArray.pop();

    expect(result).toEqual("b");
    expect(newArray.value).toHaveLength(1);
    expect(newArray.value).toEqual(["a"]);
  });

  it("should return undefined when popping from an empty array", () => {
    const newArray = new Arr();
    const result = newArray.pop();

    expect(result).toBeUndefined();
    expect(newArray.value).toHaveLength(0);
    expect(newArray.value).toEqual([]);
  });

  it("should remove and return the first element using shift", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    const result = newArray.shift();

    expect(result).toEqual("a");
    expect(newArray.value).toHaveLength(1);
    expect(newArray.value).toEqual(["b"]);
  });

  it("should return undefined when shifting from an empty array", () => {
    const newArray = new Arr();
    const result = newArray.shift();

    expect(result).toBeUndefined();
    expect(newArray.value).toHaveLength(0);
    expect(newArray.value).toEqual([]);
  });

  it("should handle a sequence of operations correctly", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");
    const popResult = newArray.pop();
    const shiftResult = newArray.shift();

    expect(popResult).toEqual("c");
    expect(shiftResult).toEqual("a");
    expect(newArray.value).toHaveLength(1);
    expect(newArray.value).toEqual(["b"]);
  });
});
