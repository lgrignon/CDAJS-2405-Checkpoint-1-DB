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
});

describe("Arr class", () => {
  let arr: Arr;

  beforeEach(() => {
    arr = new Arr();
  });

  test("push() should add an element to the array and return the new length", () => {
    expect(arr.push("a")).toBe(1);
    expect(arr.push("b")).toBe(2);
    expect(arr.value).toEqual(["a", "b"]);
  });

  test("pop() should remove the last element and return it", () => {
    arr.push("a");
    arr.push("b");
    arr.push("c");

    expect(arr.pop()).toBe("c");
    expect(arr.value).toEqual(["a", "b"]);
    expect(arr.pop()).toBe("b");
    expect(arr.value).toEqual(["a"]);
    expect(arr.pop()).toBe("a");
    expect(arr.value).toEqual([]);
    expect(arr.pop()).toBeUndefined();
  });

  test("shift() should remove the first element and return it", () => {
    arr.push("a");
    arr.push("b");
    arr.push("c");

    expect(arr.shift()).toBe("a");
    expect(arr.value).toEqual(["b", "c"]);
    expect(arr.shift()).toBe("b");
    expect(arr.value).toEqual(["c"]);
    expect(arr.shift()).toBe("c");
    expect(arr.value).toEqual([]);
    expect(arr.shift()).toBeUndefined();
  });
});
