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
    expect(newArray.value).toEqual(["a"]);
  });

  it("should remove an element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    const result = newArray.pop();
    expect(newArray.value).toHaveLength(1);
    expect(result).toEqual(1);
    expect(newArray.value).toEqual(["a"]);
  });

  it("should remove the first element from the array", () => {
    const newArray = new Arr();
    newArray.push("a");
    newArray.push("b");
    newArray.push("c");
    const result = newArray.shift();
    expect(newArray.value).toHaveLength(2);
    expect(result).toEqual(2);
    expect(newArray.value).toEqual(["b", "c"]);
  });
});
