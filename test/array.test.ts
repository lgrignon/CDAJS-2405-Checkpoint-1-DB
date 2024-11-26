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

  it("should be able to pop last element", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    let result: string | undefined = newArray.pop();
    expect(result).toEqual("c");
    result = newArray.pop();
    expect(result).toEqual("b");
    result = newArray.pop();
    expect(result).toEqual("a");
  });

  it("returns undefined if pop on empty array", () => {
    const newArray = new Arr();
    let result: string | undefined = newArray.pop();
    expect(result).toBeUndefined();
  });

  it("returns undefined if shift on empty array", () => {
    const newArray = new Arr();
    let result: string | undefined = newArray.shift();
    expect(result).toBeUndefined();
  });

  it("should be able to shift first element", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");

    let result: string | undefined = newArray.shift();
    expect(result).toBe('a');
    result = newArray.shift();
    expect(result).toBe('b');
    result = newArray.shift();
    expect(result).toBe('c');
  });
});
